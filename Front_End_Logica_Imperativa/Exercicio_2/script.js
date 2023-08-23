let n1 = parseFloat(prompt("Informe a sua primeira nota:"));
let n2 = parseFloat(prompt("Informe a sua segunda nota:"));
let n3 = parseFloat(prompt("Informe a sua terceira nota:"));
const media = (n1 + n2 + n3) / 3;

alert(`A média é ${media}`);

if (media >= 7) {
  alert(`Parabéns, você foi APROVADO! Sua média é ${media.tofixed(2)}`);
} else {
  alert(`Você foi REPROVADO! Sua média é ${media.tofixed(2)}`);
}
