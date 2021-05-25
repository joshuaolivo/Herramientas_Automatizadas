using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HealthyDiet.clases
{

    public class cPlan
    {
        
        private static int month, age, height, activite;
        private static float weigth;
        private static string gender, purpose;

        public cPlan(int _month, int _age, int _height, float _weigth, string _gender, int _activite, string _purpose)
        {
            month = _month;
            age = _age;
            height = _height;
            weigth = _weigth;
            gender = _gender;
            activite = _activite;
            purpose = _purpose;
        }

        public double BasalCalories()
        {
            //FORMULA PARA CALCULAR EL CONSUMO CALORICO DARIO

            
           if (gender == "H")
            {
                return 13.751 * weigth + 5.03 * height + 66.47 - 6.75 * age;
            }
            else
            {
                return 9.46 * weigth + 1.8 * height + 655.7 - 4.67 * 20;
            }
        }

        public  double FullConsumption()
        {

            double calories;

            calories = BasalCalories();


            // Consumo calorico deacuerdo a la actividad fisica

            if (activite >= 0 && activite <= 2)
            {
                return 1.25 * calories;
            }
            if (activite >= 3 && activite <= 5)
            {
                return 1.5 * calories;
            }
            else
            {
                return 1.75 * calories;
            }
        }

		public double NewCobsumption()
		{
			
			double full = FullConsumption();


			//PLAN CALORICO DEACUERDO AL DESEO

			if (purpose == "S")
			{
				switch (month)
				{
					case 0:
						return full;
					case 1:
						return full + 200;
					case 2:
						return full + 300;
					case 3:
						return full + 400;
					default:
						return full + 500;
				}
			}
			else
			{
				switch (month)
				{
					case 0:
						return full;
					
					case 1:
						return full - 100;
						
					case 2:
						return full - 200;
						
					case 3:
						return full - 300;
						
					default:
						return full - 500;
						
				}
			}
		}

        
    }
}