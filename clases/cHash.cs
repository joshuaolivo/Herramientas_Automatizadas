using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Text;
using System.ComponentModel;

namespace HealthyDiet.clases
{

    public class cHash
    { 


         public static byte[] GenerateSalt()
         {
            const int saltLength = 32;

            using (var randomNumberGenerator = new RNGCryptoServiceProvider())
            {
                var randomNumber = new byte[saltLength];
                randomNumberGenerator.GetBytes(randomNumber);

                return randomNumber;
            }
         }

        private static byte[] Combine(byte[] first, byte[] second)
        {
            var ret = new byte[first.Length + second.Length];

            Buffer.BlockCopy(first, 0, ret, 0, first.Length);
            Buffer.BlockCopy(second, 0, ret, first.Length, second.Length);

            return ret;
        }

        public static byte[] HashPasswordWithSalt(byte[] toBeHashed, byte[] salt)
        {
            using (var sha256 = SHA256.Create())
            {
                var combinedHash = Combine(toBeHashed, salt);

                return sha256.ComputeHash(combinedHash);
            }
        }


        public string HashPass(string pass)
         {   
            string result = string.Empty;
            byte[] decryted = Encoding.UTF8.GetBytes(pass);
            result = System.Text.Encoding.Unicode.GetString(decryted);
            return result;
         }

        public string HashId(string nombre, string fecha, string edad)
        {
            string preHash = nombre + fecha + edad;
            string id = null;

            byte[] hash = Encoding.Default.GetBytes(preHash);
            SHA512Managed algortimohash = new SHA512Managed();
            byte[] newHash = algortimohash.ComputeHash(hash);

            string preid = BitConverter.ToString(newHash, 0);


            for(int i = 0; i < preid.Length; i++)
            {
                if(preid[i]!='-')
                {
                    id += preid[i];
                }
            }
            
            return id;
        }
     
    }
}