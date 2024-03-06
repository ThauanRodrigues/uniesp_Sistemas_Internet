// Escreva uma função que encontre a área e o perímetro de um círculo, de acordo
// com o raio fornecido.

function calcularAreaPerimetro(raio) {
  const PI = 3.14159;
  let area = PI * raio * raio;
  let perimetro = 2 * PI * raio;

  return {
    area: area,
    perimetro: perimetro,
  };
}

let raio = prompt("Digite o raio do círculo:");
let resultado = calcularAreaPerimetro(raio);

console.log("A área do círculo é: " + resultado.area.toFixed(2));
console.log("O perímetro do círculo é: " + resultado.perimetro.toFixed(2));
