//     Desenvolva uma função que receba como parâmetro a lista acima fornecida e imprima
//     os dados Nome, Média Aritmética e Curso APENAS dos alunos que tiveram média maior ou igual
//     a 7.

var alunos = [
  {
    nome: "Maria Joaquinha",
    notas: [8, 7.5, 9],
    curso: "Sistemas para Internet",
  },

  { nome: "João Ricardo", notas: [8, 8.5, 5], curso: "Direito" },
  { nome: "José Henrique", notas: [4, 10, 7], curso: "Administração" },
  {
    nome: "Pedro da Silva",
    notas: [6, 7.6, 7.5],
    curso: "Sistemas para Internet",
  },
  {
    nome: "Silvana Morais",
    notas: [6, 7.5, 9.5],
    curso: "Sistemas de Informação",
  },
  { nome: "Patricia Castro", notas: [1, 9, 10], curso: "Arquitetura" },
  { nome: "Joana Ribeiro", notas: [8, 9, 9], curso: "Contabilidade" },
  { nome: "Rafael Rocha", notas: [4, 4, 9], curso: "Sistemas para Internet" },
  {
    nome: "Gustavo Henrique",
    notas: [8, 7.5, 5],
    curso: "Sistemas para Internet",
  },
];

function calcularMedia(notas) {
  return notas.reduce((a, b) => a + b, 0) / notas.length;
}

function imprimirAluno(aluno) {
  console.log("Nome: " + aluno.nome);
  console.log("Média Aritmética: " + calcularMedia(aluno.notas).toFixed(2));
  console.log("Curso: " + aluno.curso);
  console.log("---------------------------");
}

function imprimirAlunosComMediaMaiorOuIgualA7(alunos) {
  for (let aluno of alunos) {
    if (calcularMedia(aluno.notas) >= 7) {
      imprimirAluno(aluno);
    }
  }
}

imprimirAlunosComMediaMaiorOuIgualA7(alunos);
