terminou = false;
contador = 0;
abriu = false;
global.puzzle_concluido = false; // Flag para indicar se o puzzle foi resolvido
global.angulos = array_create(20); // Array para salvar ângulos dos 20 objetos

// Inicialize os ângulos com valores padrão (antes de resolver o puzzle)
for (var i = 0; i < 20; i++) {
    global.angulos[i] = 0; // Angulo inicial
}