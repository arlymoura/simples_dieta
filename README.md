# Simples Dieta
Aplicativo Ruby on Rails que gera as dietas de uma pessoa e gera um grafico de acompanhamento. Cada pessoa só poderá ver suas dietas. 

## Solution

Para resolver a tarefa, foi utilizado a gem "devise" para controlar a autencicação dos usuários. ao ser autenticado o usuário se depara com uma tela onde ele vai fazer o cadastro de suas respectivas dietas.
Dentro do cadastro/edição de dieta, foi incluido a parte das refeições.
para o cadastro/remoção de refeições ficar dinamico foi utilizado "Stimulus Js", uma gem onde faz o controle de adição e remoção das refeições(Utilizando um controller JS para isso).
A parte do dashboard foi utilizado a gem "chartkick" para auxiliar na criação dos graficos.

## Notes
Testei modelos
Além disso, criei fábricas para esses testes. Que seria uma bateria de testes onde verifica as possiveis vulnerabilidades e BAD praticies 

Eu tento seguir os princípios do SOLID.

Você pode acessar em http: //localhost:3000/

## Project Requirements
- Ruby 2.7.0
- Rails 6.0

## Project Gems

### Code Coverage
- simplecov

### Code Quality
- rubocop

### Environment Variables
- dotenv-rails

### Testing and Validations
- active_storage_validations
- factory-bot-rails
- faker
- rspec-rails
- database_cleaner-active_record
- shoulda-matchers

### CSS Framework
- Bulma

### CSS Charts
- Chartkick

## CreatePDF
- 'wicked_pdf'
- 'wkhtmltopdf-binary'

## Running Project
No terminal executar os comando:

```console
user@matrix:~$ bundle install
```

```console
user@matrix:~$ bundle yarn install
```

## Running Testes
No terminal executar os comando:

```console
user@matrix:~$ rake test
```
