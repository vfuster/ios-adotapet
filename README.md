# AdotaPet 🐱

O AdotaPet surgiu para facilitar a adoção de animais, no app é possível filtrar pets por cidade, visualizar seus detalhes (foto, descrição, idade e gênero) e solicitar a adoção a partir de um formulário que exibe os requisitos para tal.

## Arquitetura 🏗
O projeto foi criado utilizando a arquitetura MVC (Model View Controller). Além para a criação de telas usadas na navegação é responsabilidade de uma Factory. A camada de apresentação utiliza Formatters.

## Testes ✅

O projeto possui teste unitários que são responsáveis por garantir o funcionamento de alguns mecanismos: 

- Formatadores utilizados na camada de apresentação;
- DAO utilizado para o fornecimento de dados;
- Testes das células para garantir a configuração correta dos IBOutlets;
- Testes do mecanismo responsável pela criação de telas que serão apresentadas, garantindo o uso correto das suas dependências.

Os ViewControllers não possuem testes.

## Melhorias ✨

## License 
MIT.
