# Projeto GoLearning App

Este projeto demonstra um relacionanto N:N entre as tabelas `Students` e `Courses`. Usando a taleba `Enrollments` como tabela associativa.

Algumas características

* Ruby version: ruby 3.1.0

* Rails version: Rails 7.0.4.2

* Autenticação com a gem `devise`

* Suite de testes com `rspec`, `factoryBot`, `capybara` (**model**, **routing**, **request**, **system**)

## Funcionalidades

* Possue uma home que apresenta os 5 cursos em destaques (**ativos** usando **starts_at** e **ends_at**).

* Para se inscrever em algum curso, o aluno precisa se cadastrar.

* É possível se inscrever em vários cursos que estejam `ativos`. Existe um **scope** e um **método** para determinar os cursos ativos.

* É possível ver em quais cursos um aluno de inscreveu.

* É possível ver quais alunos estão inscritos em um curso.
