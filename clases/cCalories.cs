using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HealthyDiet.clases
{
    public class cCalories
    {
        cQueys queys = new cQueys();
        public int[] getMacrosMore(string id)
        {
            int[] macros = new int[3];

            int calorias = queys.getCalories(id);

            //OBTENER CARBOS
            macros[0] = Convert.ToInt32(Math.Round((calorias * .40)) / 4);
            //Obtener Prote
            macros[1] = Convert.ToInt32(Math.Round((calorias * .35)) / 4);
            //OBTENER GRASAS
            macros[2] = Convert.ToInt32(Math.Round((calorias * .25)) / 9);
            return macros;
        }

        public int[] getMacrosLess(string id)
        {
            int[] macros = new int[3];

            int calorias = queys.getCalories(id);

            //OBTENER CARBOS
            macros[0] = Convert.ToInt32(Math.Round((calorias * .30)) / 4);
            //Obtener Prote
            macros[1] = Convert.ToInt32(Math.Round((calorias * .50)) / 4);
            //OBTENER GRASAS
            macros[2] = Convert.ToInt32(Math.Round((calorias * .20)) / 9);

            return macros;
        }
    }
}