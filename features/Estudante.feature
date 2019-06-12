Feature: Estudante
  As an Diretor do sistema de comunicacao
  I want to cadastrar, ver, atualizar e remover um Estudante
  So that eu nao tenha que fazer isto manualmente

  Scenario: Cadastrar um Estudante corretamente
    Given Eu estou na pagina de cadastro de um novo estudante
    And Eu preencho o campo de nome com 'Fulano', o de cpf com '12345678901' e o de turma com 'A'
    When Eu clico no botao para cadastrar um novo estudante
    Then Um novo estudante com cpf '12345678901' eh criado