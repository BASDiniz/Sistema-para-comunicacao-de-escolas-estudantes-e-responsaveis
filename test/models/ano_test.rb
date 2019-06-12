require 'test_helper'

class AnoTest < ActiveSupport::TestCase
  test "Deve ser possivel criar um ano corretamente" do
    escolaTeste = Escola.new(nome:'UAG',cpfDoDiretor: '70378876414')
    escolaTeste.save
    anoTeste = Ano.new(nome:'1°',turno:'Tarde',escola: escolaTeste)
    assert anoTeste.save
  end
end
