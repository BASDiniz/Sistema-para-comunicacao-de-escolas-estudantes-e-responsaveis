require 'test_helper'

class AnoTest < ActiveSupport::TestCase
  test "Deve ser possivel criar um ano corretamente" do
    escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
    escolaTeste.save
    anoTeste = Ano.new(nome:'1°',turno:'Tarde',escola: escolaTeste)
    assert anoTeste.save
  end

  test "Nao deve ser possivel criar um ano sem turno" do
    escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
    escolaTeste.save
    anoTeste = Ano.new(nome:'1°',escola: escolaTeste)
    assert_not anoTeste.save
  end

  test "Nao deve ser possivel criar um ano sem nome" do
    escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
    escolaTeste.save
    anoTeste = Ano.new(turno: '8ª',escola: escolaTeste)
    assert_not anoTeste.save
  end
end
