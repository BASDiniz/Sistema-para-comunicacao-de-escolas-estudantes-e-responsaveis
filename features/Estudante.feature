Feature: Estudante
  As an Diretor do sistema de comunicacao
  I want to cadastrar, ver, atualizar e remover um Estudante
  So that eu nao tenha que fazer isto manualmente

  Scenario: Cadastrar um Estudante corretamente
    Given Eu estou na pagina de cadastro de um novo estudante
    And Eu preencho o campo de nome com 'Fulano', o de cpf com '12345678901' e o de turma com 'A'
    When Eu clico no botao para cadastrar um novo estudante
    Then Um novo estudante com cpf '12345678901' eh criado

  Scenario: Visualizar um Estudante cadastrado
    Given Eu estou na pagina de listagem de todos os estudantes
    When Eu clico para visualizar o estudante que possui o cpf '12345678901'
    Then Eu vejo o estudante que possui o cpf '12345678901'

  Scenario: Atualizar a turma de um Estudante corretamente
    Given Eu estou na pagina de listagem de todos os estudantes
    And Eu clico para editar o estudante que possui cpf '12345678901'
    When Eu preencho o campo de turma com 'A' e clico para salvar as alteracoes
    Then Eu vejo que a turma do estudante de cpf '12345678901' foi atualizada corretamente para 'A'
