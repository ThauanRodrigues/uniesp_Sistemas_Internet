var botaoSalvar = document.getElementById("botaoSalvar");
botaoSalvar.addEventListener("click", carregarDados);

function carregarDados() {
  alert("O botão foi clicado");
  console.log("Fazendo download de um arquivo.");

  var texto = document.getElementById("txtNome").value;
  alert(texto);
}

function alterarTitulo() {
  var titulo = document.getElementById("titulo");
  titulo.innerHTML = "Novo Título";

  var caixaTexto = document.getElementById("txtNome");
  caixaTexto.focus();
}

function addElementoP() {}
