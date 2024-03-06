function calcularPopulacao(habitantes, taxa) {
  return (habitantes += habitantes * taxa);
}

function calcularAnos(habitantes_A, habitantes_B, taxa_A, taxa_B) {
  let anos = 0;

  while (habitantes_A > habitantes_B) {
    habitantes_A = calcularPopulacao(habitantes_A, taxa_A);
    habitantes_B = calcularPopulacao(habitantes_B, taxa_B);
    anos++;
  }
  return anos;
}

let habitantes_A = 80000;
let habitantes_B = 200000;
let taxa_A = 0.03;
let taxa_B = 0.015;

let anos = calculateYears(habitantes_A, habitantes_B, taxa_A, taxa_B);

console.log(
  "Serão necessários " +
    anos +
    " anos para que a população do país A ultrapasse ou iguale a população do país B."
);
