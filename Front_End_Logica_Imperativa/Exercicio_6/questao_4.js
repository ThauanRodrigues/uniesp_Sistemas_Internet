function calcularAumento(aumento) {
  return aumento * 2; // Dobro do percentual do ano anterior
}

function calcularSalario(salario, aumento) {
  return (salario += salario * aumento);
}

function calcularSalarioAtual(salarioInicial, aumento) {
  // Calcula o salário para cada ano a partir de 1997
  for (let ano = 1997; ano <= new Date().getFullYear(); ano++) {
    aumento = calcularAumento(aumento);
    salarioInicial = calcularSalario(salarioInicial, aumento);
  }
  return salarioInicial;
}

let salarioInicial = 1000; // Salário inicial do funcionário em 1995[^1^][1]
let aumento = 0.015; // Aumento de 1.5% em 1996

let salarioAtual = calcularSalarioAtual(salarioInicial, aumento);

console.log("O salário atual do funcionário é: R$" + salarioAtual.toFixed(2));
