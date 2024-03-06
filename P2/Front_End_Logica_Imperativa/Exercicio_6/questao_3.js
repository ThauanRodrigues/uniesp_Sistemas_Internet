function obterNumero() {
  return prompt("Digite um número:");
}

function calcularSoma(numeros) {
  let soma = 0;
  for (let numero of numeros) {
    soma += numero;
  }
  return soma;
}

function calcularMenor(numeros) {
  return Math.min(...numeros);
}

function calcularMaior(numeros) {
  return Math.max(...numeros);
}

function executarPrograma(N) {
  let numeros = [];

  for (let i = 0; i < N; i++) {
    let numero = obterNumero();
    numeros.push(numero);
  }

  let soma = calcularSoma(numeros);
  let menor = calcularMenor(numeros);
  let maior = calcularMaior(numeros);

  console.log("Menor valor: " + menor);
  console.log("Maior valor: " + maior);
  console.log("Soma dos valores: " + soma);
}

executarPrograma(10);
