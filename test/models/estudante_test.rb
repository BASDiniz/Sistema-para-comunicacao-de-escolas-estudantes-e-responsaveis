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

  test 'Nao deve ser possivel salvar um estudante com todos os campos em branco' do
    escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
    escolaTeste.save
    estudante = Estudante.new nome: '', cpf: ''
    assert_not estudante.save
  end

  test 'Deve ser possivel salvar um estudante com todos os campos preenchidos corretamente' do
    escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
    escolaTeste.save
    anoTeste = Ano.new(nome:'1°',turno:'Tarde',escola: escolaTeste)
    turmaTeste = Turma.new(nome: 'A', ano: anoTeste)
    estudante = Estudante.new nome: 'Bruno', cpf: '33333333333', turma: turmaTeste
    assert estudante.save
  end
end
