Console.WriteLine($"Informe sua idade expressa em anos: ");
int years = int.Parse(Console.ReadLine());

Console.WriteLine($"em meses: ");
int months = int.Parse(Console.ReadLine());

Console.WriteLine($"em dias: ");
int days = int.Parse(Console.ReadLine());

int ageDays = (years*365) + (months*30) + days;

Console.WriteLine($" Sua idade em dias é {ageDays} dias.");
