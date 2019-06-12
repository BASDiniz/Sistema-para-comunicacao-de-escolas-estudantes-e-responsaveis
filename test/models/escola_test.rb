require 'test_helper'

class EscolaTest < ActiveSupport::TestCase
  test 'Nao deve ser possivel salvar uma escola com nome em branco' do
    escolaTeste = Escola.new(nome: '',cpfDoDiretor: '12345678910')
    assert_not escolaTeste.save, "Salvou escola com o nome em branco"
  end
end
