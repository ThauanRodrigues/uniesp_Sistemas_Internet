let alturas = [];
let generos = [];

for (let i = 0; i < 15; i++) {
  let altura = parseFloat(prompt(`Digite a altura da pessoa ${i + 1}:`));
  let genero = prompt(
    `Digite o gênero da pessoa ${i + 1} (H para homem, M para mulher)`
  ).toUpperCase();
  alturas.push(altura);
  generos.push(genero);
}

let maior_altura = Math.max(...alturas);
let menor_altura = Math.min(...alturas);

let alturas_homens = alturas.filter((altura, index) => generos[index] === "H");
let med_altura_homens =
  alturas_homens.length > 0
    ? alturas_homens.reduce((a, b) => a + b, 0) / alturas_homens.length
    : 0;
let numero_mulheres = generos.filter((genero) => genero === "M").length;

alert(`A maior altura do grupo é: ${maior_altura.toFixed(2)}`);
alert(`A menor altura do grupo é: ${menor_altura.toFixed(2)}`);
alert(`A média de altura dos homens é ${med_altura_homens.toFixed(2)}`);
alert(`O número de mulheres é: ${numero_mulheres}`);
