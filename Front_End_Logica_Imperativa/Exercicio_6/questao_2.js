function obterNumero() {
  return prompt("Digite um número inteiro:");
}

function isPar(numero) {
  return numero % 2 == 0;
}

function contarNumeros() {
  let numerosPares = 0;
  let numerosImpares = 0;

  for (let i = 0; i < 10; i++) {
    let numero = obterNumero();

    if (isPar(numero)) {
      numerosPares++;
    } else {
      numerosImpares++;
    }
  }
  console.log("Quantidade de números pares: " + numerosPares);
  console.log("Quantidade de números ímpares: " + numerosImpares);
}

contarNumeros();
