// Escreva uma função que informe o retorno de um investimento (montante) com
// base nos valores do capital inicial, tempo em meses e taxa de juros mensal,
// fornecidos pelo usuário.
// Use a fórmula: M = C * (1+i)t
// Onde:
// ▪ C = Capital inicial investido
// ▪ i = Taxa de juros, em percentual
// ▪ t = Tempo do investimento, em meses
// Exiba o resultado com duas casas decimais.

function calcularRetornoInvestimento(capitalInicial, tempo, taxaJuros) {
  taxaJuros /= 100; // Converte a taxa de juros de percentual para decimal
  let montante = capitalInicial * Math.pow(1 + taxaJuros, tempo);

  return montante;
}

let capitalInicial = prompt("Digite o capital inicial:");
let tempo = prompt("Digite o tempo do investimento em meses:");
let taxaJuros = prompt("Digite a taxa de juros mensal em percentual:");

let retorno = calcularRetornoInvestimento(capitalInicial, tempo, taxaJuros);

console.log("O retorno do investimento é: R$" + retorno.toFixed(2));
