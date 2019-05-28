require 'test_helper'

class EstudanteTest < ActiveSupport::TestCase
  test 'Nao deve ser possivel salvar um estudante com o cpf em branco' do
    estudante = Estudante.new nome: 'Bruno', cpf: '', serie: '8ª', turma: 'A'
    assert_not estudante.save
  end

  test 'Nao deve ser possivel salvar um estudante com todos os campos em branco' do
      estudante = Estudante.new nome: '', cpf: '', serie: '', turma: ''
      assert_not estudante.save
  end

  test 'Deve ser possivel salvar um estudante com todos os campos preenchidos corretamente' do
      estudante = Estudante.new nome: 'Bruno', cpf: '12345678901', serie: '8ª', turma: 'A'
      assert estudante.save
  end
end
