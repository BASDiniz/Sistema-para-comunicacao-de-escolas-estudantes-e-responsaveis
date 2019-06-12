Feature: Ano
  As an Diretor do sistema de comunicacao
  I want to cadastrar, ver, atualizar e remover um Ano
  So that eu nao tenha que fazer isto manualmente

  Scenario: Cadastrar um Ano corretamente
    Given Eu estou na pagina de cadastro de um novo Ano
    When Eu cadastro um ano com o nome "4ª", turno "Tarde" e escola "UAG"
    Then Eu vejo que o ano com o nome "4ª" foi cadastrado corretamente

  Scenario: Visualizar um Ano
    Given Eu estou na pagina de listagem de Anos
    When Eu clico para visualizar o ano "4ª"
    Then Eu visualizo o ano de nome "4ª"

  Scenario: Tentar cadastrar um Ano com o nome em branco
    Given Eu estou na pagina de cadastro de um novo Ano da Escola
    When Eu tento fazer o cadastro de um ano com o nome ""
    Then Eu vejo "1" mensagem de erro referente ao Ano

  Scenario: Tentar cadastrar um ano com turno em branco
    Given Eu estou na pagina de cadastro de um Ano
    When Eu tento fazer o cadastro de um Ano com o turno ""
    Then Eu vejo "1" mensagem de erro sobre o Ano

  Scenario: Deletar um ano corretamente
    Given Eu estou na pagina de listagem dos anos
    When Eu deleto o ano de nome "4ª"
    Then Eu vejo que o Ano de nome "4ª" foi deletado