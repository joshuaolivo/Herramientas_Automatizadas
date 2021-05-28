using System;
using HealthyDiet.clases;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace HealthyDiet.clases
{
    public class cQuerys
    {
        cConnection conet = new cConnection();
        bool resultado;
        string respuesta;
        int result;
        float[] macros = new float[4];
        string[] info = new string[7];

        public bool Registrar(string id, string nombre, string ap_pat, string ap_mat, string sexo, string edad, string correo, string pass)
        {

            SqlCommand cmd = new SqlCommand("sp_RegistroUsuario", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            cmd.Parameters.Add("@nom", SqlDbType.NVarChar).Value = nombre;
            cmd.Parameters.Add("@Ap_pat", SqlDbType.NVarChar).Value = ap_pat;
            cmd.Parameters.Add("@Ap_mat", SqlDbType.NVarChar).Value = ap_mat;
            cmd.Parameters.Add("@Sexo", SqlDbType.NVarChar).Value = sexo;
            cmd.Parameters.Add("@edad", SqlDbType.Int).Value = Convert.ToInt32(edad);
            cmd.Parameters.Add("@correo", SqlDbType.NVarChar).Value = correo;
            cmd.Parameters.Add("@contra", SqlDbType.NVarChar).Value = pass;
            cmd.Parameters.Add("@Result", SqlDbType.NVarChar).Value = 0;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                resultado = Convert.ToBoolean(Rleido[0]);
            }

            return resultado;
        }

        public bool Login(string correo, string contraseña)
        {
            SqlCommand cmd = new SqlCommand("sp_Login", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@correo", SqlDbType.NVarChar).Value = correo;
            cmd.Parameters.Add("@contraseña", SqlDbType.NVarChar).Value = contraseña;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                resultado = Convert.ToBoolean(Rleido[0]);
            }
            return resultado;

        }

        public bool Objetivo(string id)
        {
            SqlCommand cmd = new SqlCommand("sp_getObjet", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                resultado = Convert.ToBoolean(Rleido[0]);
            }
            return resultado;

        }
        public string gender(string id)
        {
            SqlCommand cmd = new SqlCommand("sp_getGeneder", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                respuesta = Convert.ToString(Rleido[0]);
            }
            return respuesta;
        }
        public string getId(string correo)
        {
            SqlCommand cmd = new SqlCommand("sp_getId", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@correo", SqlDbType.NVarChar).Value = correo;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                respuesta = Convert.ToString(Rleido[0]);
            }
            return respuesta;
        }

        public int getCalories(string id)
        {
            SqlCommand cmd = new SqlCommand("sp_getCalories", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                result = Convert.ToInt32(Rleido[0]);
            }

            return result;
        }


        public int saveDiet(string id, int tiempo, string objetivo, int calorias)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_GuardarPlan", conet.conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
                cmd.Parameters.Add("@tiempo", SqlDbType.Int).Value = tiempo;
                cmd.Parameters.Add("@objetivo", SqlDbType.NVarChar).Value = objetivo;
                cmd.Parameters.Add("@calorias", SqlDbType.Int).Value = calorias;
                conet.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                return -1;
            }

            return 0;
        }

        public int pushFood(string id, string alimento, float cantidad, float proteina, float carbos, float grases, float calorias)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_pushAlimento", conet.conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
                cmd.Parameters.Add("@alimento", SqlDbType.NVarChar).Value = alimento;
                cmd.Parameters.Add("@cantidad", SqlDbType.Float).Value = cantidad;
                cmd.Parameters.Add("@proteinas", SqlDbType.Float).Value = proteina;
                cmd.Parameters.Add("@carbos", SqlDbType.Float).Value = carbos;
                cmd.Parameters.Add("@grasas", SqlDbType.Float).Value = grases;
                cmd.Parameters.Add("@calorias", SqlDbType.Float).Value = calorias;
                conet.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                return -1;
            }

            return 0;
        }

        public float[] sumMacros(string id)
        {
            SqlCommand cmd = new SqlCommand("sp_getSumCalorias", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                //CALORIAS
                macros[0] = Convert.ToSingle(Math.Round(Convert.ToSingle(Rleido[0]), 2));
                //Carbos
                macros[1] = Convert.ToSingle(Math.Round(Convert.ToSingle(Rleido[1]), 2));
                //Grasas
                macros[2] = Convert.ToSingle(Math.Round(Convert.ToSingle(Rleido[2]), 2));
                //Protes
                macros[3] = Convert.ToSingle(Math.Round(Convert.ToSingle(Rleido[3]), 2));
            }

            return macros;
        }

        public DataTable FillInTable(string id)
        {
            SqlDataAdapter da2 = new SqlDataAdapter("sp_FillInTable", conet.conn);
            da2.SelectCommand.CommandType = CommandType.StoredProcedure;
            da2.SelectCommand.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            conet.Open();
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            return dt2;
        }

        public bool ValidDiet(string id)
        {
            SqlCommand cmd = new SqlCommand("sp_ValidDiet", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                resultado = Convert.ToBoolean(Rleido[0]);
            }

            return resultado;
        }
        public DataTable FillInProgres(string id)
        {
            SqlDataAdapter da2 = new SqlDataAdapter("sp_FillInTable", conet.conn);
            da2.SelectCommand.CommandType = CommandType.StoredProcedure;
            da2.SelectCommand.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            conet.Open();
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            return dt2;
        }

        public String[] Self_Info(string id)
        {
            SqlCommand cmd = new SqlCommand("sp_Selfinfo", conet.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
            SqlDataReader Rleido;
            conet.Open();
            Rleido = cmd.ExecuteReader();

            int Filas = Convert.ToInt32(Rleido.HasRows);

            if (Rleido.Read())
            {
                //Name
                info[0] = Rleido[0].ToString();
                //Frist Surname
                info[1] = Rleido[1].ToString();
                //Second
                info[2] = Rleido[2].ToString();
                //Age
                info[3] = Rleido[3].ToString();
                //Hiegth
                info[4] = Rleido[4].ToString();
                //weight
                info[5] = Rleido[5].ToString();
                //date 
                info[6] = Rleido[6].ToString();
            }

            return info;
        }
    }
}