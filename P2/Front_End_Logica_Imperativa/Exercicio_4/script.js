let notas = [];
for (let i = 0; i < 3; i++) {
  let nota = prompt("Digite a nota " + (i + 1));
  notas.push(parseFloat(nota));
}

function calcularMedia(notas) {
  let soma = 0;
  for (let i = 0; i < notas.length; i++) {
    soma += notas[i];
  }
  return soma / notas.length;
}

let media = calcularMedia(notas);

if (media <= 4) {
  alert(`Sua média é ${media.toFixed(1)}, você está reprovado!`);
} else if (media > 4 && media < 7) {
  alert(`Sua média é ${media.toFixed(1)}, você esta de recuperação.`);
  let notaRecuperacao = parseFloat(prompt("Digite a nota da recuperação"));
  let mediaFinal = (media + notaRecuperacao) / 2;
  alert(
    //Operador tenário
    mediaFinal >= 5
      ? `Sua média final é ${mediaFinal.toFixed(1)}. Você foi aprovado!`
      : `Sua média final é ${mediaFinal.toFixed(1)}. Você foi reprovado.`
  );
} else {
  alert(`Sua média é ${media.toFixed(1)}. Você foi aprovado!`);
}
