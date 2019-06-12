require 'test_helper'

class EstudanteTest < ActiveSupport::TestCase
  test 'Nao deve ser possivel salvar um estudante com o cpf em branco' do
    escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
    escolaTeste.save
    anoTeste = Ano.new(nome:'1°',turno:'Tarde',escola: escolaTeste)
    turmaTeste = Turma.new(nome: 'A', ano: anoTeste)
    estudante = Estudante.new nome: 'Bruno', cpf: '', turma: turmaTeste
    assert_not estudante.save
  end
end
