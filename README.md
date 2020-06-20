# Simples Dieta
Aplicação feita em Ruby on Rails que gera as dietas e um acompanhamento gráfico da evolução do peso de um usuário. Cada usuário só poderá ver suas dietas. 

## Solution

Para resolver a tarefa, foi utilizado a gem "devise" para fazer a autenticação dos usuários. Quando um usuário faz sua autenticação existe uma tela para fazer o cadastro de suas dietas. 

Dentro do cadastro/edição de dieta, foi incluído a inclusão das refeições. Para este cadastro de refeições ser dinâmico, foi utilizado o "Stimulus Js", um framework Javascript.

A parte do dashboard foi feito utilizando a gem "chartkick" para auxiliar na criação dos gráficos.

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
- factory-bot-rails
- covarege
- breakman
- faker
- rspec-rails
- database_cleaner-active_record
- shoulda-matchers

### CSS Framework
- Bulma

### CSS Charts
- Chartkick

## CreatePDF
- wicked_pdf
- wkhtmltopdf-binary

### Translate
- I18n
- Devise-I18n

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
