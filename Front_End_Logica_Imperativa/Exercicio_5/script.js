function somarNumeros() {
  let soma = 0;
  let numero = null;

  for (let i = 0; i < 5; i++) {
    numero = prompt(`Digite o ${i + 1}° número:`);
    if (numero !== null) {
      soma += Number(numero);
    }
  }

  alert(`A soma dos números é: ${soma}`);
}

somarNumeros();
