Feature: Escola
  As an Diretor do sistema de comunicacao
  I want to cadastrar, ver, atualizar e remover uma Escola
  So that eu nao tenha que fazer isto manualmente

  Scenario: Cadastrar uma Escola corretamente
    Given Eu estou na pagina de cadastro de uma nova escola
    When Eu cadastro uma escola com o nome "Escola1" e com cpf do diretor "12345678910"
    Then Eu vejo que a escola com o nome "Escola1" foi cadastrada corretamente