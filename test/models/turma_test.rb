require 'test_helper'

class TurmaTest < ActiveSupport::TestCase
  test "Deve ser possivel salvar uma turma corretamente" do
      escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
      escolaTeste.save
      anoTeste = Ano.new(nome:'1°',turno:'Tarde',escola: escolaTeste)
      turmaTeste = Turma.new(nome: 'A',ano: anoTeste)
      assert turmaTeste.save
  end
  test "Nao deve ser possivel salvar uma turma sem nome" do
      escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
      escolaTeste.save
      anoTeste = Ano.new(nome:'1°',turno:'Tarde',escola: escolaTeste)
      turmaTeste = Turma.new(ano: anoTeste)
      assert_not turmaTeste.save
  end
  test "Nao deve ser possivel salvar uma turma sem ano" do
      escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
      escolaTeste.save
      anoTeste = Ano.new(nome:'1°',turno:'Tarde',escola: escolaTeste)
      turmaTeste = Turma.new(nome: 'A')
      assert_not turmaTeste.save
  end
end
