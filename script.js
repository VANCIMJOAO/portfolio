const meses = ["JAN", "FEV", "MAR", "ABR", "MAI", "JUN", "JUL", "AGO", "SET", "OUT", "NOV", "DEZ"];
const hoje = new Date();
const mes = meses[hoje.getMonth()];
const ano = String(hoje.getFullYear()).slice(-2);

document.addEventListener("DOMContentLoaded", () => {
  // Atualizar data atual
  const dataElement = document.getElementById("data-atual");
  if (dataElement) {
    dataElement.textContent = `${mes}'${ano}`;
  }

  // Animação letra por letra para o nome
  const nomeElement = document.getElementById("nome");
  if (nomeElement) {
    const nome = "JOÃO VANCIM";
    nomeElement.innerHTML = ''; // Limpar conteúdo existente
    
    nome.split("").forEach((char, i) => {
      const span = document.createElement("span");
      span.textContent = char === " " ? "\u00A0" : char; // Non-breaking space para espaços
      span.className = "inline-block opacity-0 animate-fadeInUp";
      span.style.animationDelay = `${i * 0.1}s`;
      span.style.animationFillMode = "forwards";
      nomeElement.appendChild(span);
    });
  }

  // Fade in do main content
  const mainElement = document.getElementById("main");
  if (mainElement) {
    setTimeout(() => {
      mainElement.style.opacity = "1";
    }, 500);
  }

  // Loading screen
  const loadingScreen = document.querySelector('.loading-screen');
  if (loadingScreen) {
    setTimeout(() => {
      loadingScreen.style.opacity = "0";
      setTimeout(() => {
        loadingScreen.style.display = "none";
      }, 500);
    }, 1000);
  }
});
