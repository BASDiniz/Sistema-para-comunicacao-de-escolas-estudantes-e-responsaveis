Feature: Escola
  As an Diretor do sistema de comunicacao
  I want to cadastrar, ver, atualizar e remover uma Escola
  So that eu nao tenha que fazer isto manualmente

  Scenario: Cadastrar uma Escola corretamente
    Given Eu estou na pagina de cadastro de uma nova escola
    When Eu cadastro uma escola com o nome "Escola1", cpf do administrador "12345678910", numero de estudantes "10", numero de series "1", numero de turmas "2" e numero de professores "5"
    Then Eu vejo que a escola com o nome "Escola1" foi cadastrada corretamente

  Scenario: Visualizar uma Escola
    Given Eu estou na pagina de listagem de escolas
    When Eu clico para visualizar a escola de nome "Escola1"
    Then Eu visualizo a escola de nome "Escola1"

  Scenario: Tentar cadastrar uma Escola com todos os campos em branco
    Given Eu estou na pagina de cadastro de uma escola nova
    When Eu faco o cadastro de uma escola com o nome "", cpf do administrador "", numero de estudantes "", numero de series "", numero de turmas "" e numero de professores ""
    Then Eu vejo "8" mensagens de erro

  Scenario: Atualizar o nome de uma escola corretamente
    Given Eu estou na pagina que lista todas as escolas
    And Eu clico para editar a escola de nome "Escola1"
    When Eu insiro o novo nome "EscolaAtt1" e clico para atualizar a escola
    Then Eu vejo que o nome da escola foi atualizado corretamente para "EscolaAtt1"
