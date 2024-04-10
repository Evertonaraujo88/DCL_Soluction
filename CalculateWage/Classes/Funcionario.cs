using System.Globalization;

namespace CALCULATEWAGE.classes
{
   public class Funcionario{
        public string NomeVendedor  {get; set;}
        public float Salario{get; set;}
        public int QtdCarros{get; set;}
        public float ValorTotalVendas {get; set;}
        public float ComissaoFixa {get; set;}
       
               
        public void CalcularSalario(){
          
           Console.WriteLine($" O salário do vendedor {NomeVendedor} este mês é {(Salario+(ComissaoFixa*QtdCarros)+(ValorTotalVendas*0.05)).ToString("C", new CultureInfo("pt-br"))}.");
           
        }

    }
}