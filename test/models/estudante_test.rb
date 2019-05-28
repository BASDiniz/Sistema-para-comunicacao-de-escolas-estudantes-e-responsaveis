require 'test_helper'

class EstudanteTest < ActiveSupport::TestCase
  test 'Nao deve ser possivel salvar um estudante com o cpf em branco' do
    estudante = Estudante.new nome: 'Bruno', cpf: '', serie: '8ª', turma: 'A'
    assert_not estudante.save
  end
end
