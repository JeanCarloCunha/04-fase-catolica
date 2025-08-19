// => O que entregar 

// · A classe VetorDinamico<T> completa, com todos os métodos acima implementados.

// · Um main() que:

//        o Crie um vetor de inteiros e outro de strings para testar.

//        o Teste todas as funções obrigatórias (adição, remoção, inserção, acesso, busca, limpar, etc.).

//        o Mostre a saída no console, validando que o comportamento está correto.


// => Critérios de avaliação

//        1. Corretude: todos os métodos implementados de acordo com as regras.

//        2. Tratamento de erros: índices inválidos devem lançar RangeError.

//        3. Uso adequado de genéricos e null safety: a classe deve ser genérica (<T>) e não vazar null para fora da interface pública.

//        4. Cobertura de testes: o main() deve chamar e demonstrar o uso de todas as funções obrigatórias.

//        5. Organização do código.


// ====================,,=======================



// ### Consutas

// 1) Retorna a quantidade de elementos realmente armazenados.
int tamanho();

// 2) Retorna true se não houver nenhum elemento.

bool estaVazio();

// 3) Retorna a capacidade interna atual.

int capacidade();



// ### Acesso por índice

// 1) Retorna o elemento da posição indicada. 
// Se for inválido, lança RangeError.

T operator [](int indice);

// 2) Atualiza o elemento da posição indicada. 
// Se for inválido, lança RangeError.

void operator []=(int indice, T valor);



// ### Inserção e remoção

// 1) Adiciona o valor no fim do vetor, 
// aumentando a capacidade se necessário.

void adicionar(T valor);

// 2) Insere na posição indicada (0 <= indice <= tamanho).
// Desloca os elementos à direita para abrir espaço.

void inserir(int indice, T valor);

// 3) Remove e retorna o valor na posição indicada (0 <= indice < tamanho).
// Desloca os elementos à esquerda para preencher o espaço.

T removerEm(int indice);

// 4) Remove todos os elementos, mas mantém a capacidade alocada.

void limpar();



// ### Busca/utilidades

// 1) Retorna o índice da primeira ocorrência do valor, 
// ou -1 se não encontrar.

int indiceDe(T valor);


// 2) Retorna true se o valor existir no vetor.

bool contem(T valor);


// Retorna os elementos no formato [e1, e2, e3], 
//apenas até o tamanho real.

@override

String toString();


// ### Suporte interno (privado)

// 1) Se a capacidade atual for menor que a necessária, dobra repetidamente
// até que caiba o novo elemento. Copia os dados para a nova lista interna.

void _garantirCapacidade(int capacidadeMinima);

