Feature: Turma
  As an Diretor do sistema de comunicacao
  I want to cadastrar, ver, atualizar e remover uma Turma
  So that eu nao tenha que fazer isto manualmente

  Scenario: Cadastrar uma Turma corretamente
    Given Eu estou na pagina de cadastro de uma nova turma
    When Eu cadastro uma turma com o nome "A" e com o ano "4ª"
    Then Eu vejo que a turma com o nome "A" foi cadastrada corretamente
