Feature: Turma
  As an Diretor do sistema de comunicacao
  I want to cadastrar, ver, atualizar e remover uma Turma
  So that eu nao tenha que fazer isto manualmente

  Scenario: Cadastrar uma Turma corretamente
    Given Eu estou na pagina de cadastro de uma nova turma
    When Eu cadastro uma turma com o nome "A" e com o ano "4ª"
    Then Eu vejo que a turma com o nome "A" foi cadastrada corretamente

  Scenario: Visualizar uma Turma
    Given Eu estou na pagina de listagem de turmas
    When Eu clico para visualizar a turma "A"
    Then Eu visualizo a turma de nome "A"

  Scenario: Tentar cadastrar uma Turma com o nome em branco
    Given Eu estou na pagina de cadastro de uma nova turma da escola
    When Eu tento fazer o cadastro de uma turma com o nome ""
    Then Eu vejo "1" mensagem de erro referente a turma

  Scenario: Tentar cadastrar uma Turma com o ano em branco
    Given Eu estou na pagina de cadastro de uma turma da escola
    When Eu tento fazer o cadastro de uma turma com o ano ""
    Then Eu vejo "1" mensagem de erro sobre a turma

  Scenario: Deletar uma turma corretamente
    Given Eu estou na pagina de listagem das turmas
    When Eu deleto a turma de nome "A"
    Then Eu vejo que a turma de nome "A" foi deletada
