using CALCULATEWAGE;

using CALCULATEWAGE.classes;

Funcionario funcionario = new Funcionario();

string opcao;
do
{

Console.WriteLine($"Informe o nome do vendedor que deseja calcular o salário: ");
funcionario.NomeVendedor = (Console.ReadLine());

Console.WriteLine($"Informe a quantidade de carros vendidos por {funcionario.NomeVendedor}: ");
funcionario.QtdCarros = int.Parse(Console.ReadLine());

Console.WriteLine($"Informe o valor total das vendas do vendedor {funcionario.NomeVendedor}: ");
funcionario.ValorTotalVendas = float.Parse(Console.ReadLine());

Console.WriteLine($"Informe o salario fixo do vendedor {funcionario.NomeVendedor} por mês: ");
funcionario.Salario = float.Parse(Console.ReadLine());

Console.WriteLine($"Informe a comissão fixa do vendedor {funcionario.NomeVendedor} por venda de carro: ");
funcionario.ComissaoFixa = float.Parse(Console.ReadLine());

funcionario.CalcularSalario();


Console.WriteLine($"Deseja calcular o salário de outro vendedor? (s) sim ou (n) não");
opcao = Console.ReadLine();
} while (opcao == "s");

