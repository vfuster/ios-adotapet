# AdotaPet 🐱

O AdotaPet surgiu para facilitar a adoção de animais, no app é possível filtrar pets por cidade, visualizar seus detalhes (foto, descrição, idade e gênero) e solicitar a adoção a partir de um formulário que exibe os requisitos para tal.

## Evidências 
![Imagens do Projeto](https://github.com/vfuster/ios-adotapet/blob/main/adotaPet-image.png?raw=true)

Confira o vídeo do projeto no [Youtube](https://youtu.be/IZC3qsX_v2M)

> A layout foi inspirado no projeto Pet Adoption App criado por Julia Tikhiy-Tishchenko. Disponível no [Dribbble](https://dribbble.com/shots/10957059-Pet-Adoption-App)

## Arquitetura 🏗
O projeto foi criado utilizando a arquitetura MVC (Model View Controller). Além disso, a criação de telas usadas na navegação é responsabilidade de uma Factory. A camada de apresentação utiliza Formatters.

## Testes ✅

O projeto possui teste unitários que são responsáveis por garantir o funcionamento de alguns mecanismos: 

- Formatadores utilizados na camada de apresentação;
- DAO utilizado para o fornecimento de dados;
- Testes das células para garantir a configuração correta dos IBOutlets;
- Testes do mecanismo responsável pela criação de telas que serão apresentadas, garantindo o uso correto das suas dependências.

Os ViewControllers não possuem testes.

## Melhorias ✨
- Refatorar ViewControllers para adicionar testes;
- Adicionar suporte a internacionalização;
- Suportar iPad;
- Adicionar novas features:
  - Busca por tipo de animal;
  - Adicionar animais aos favoritos;
  - Adicionar tela de perfil;

## License 
MIT.
