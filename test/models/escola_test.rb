require 'test_helper'

class EscolaTest < ActiveSupport::TestCase
  test 'Nao deve ser possivel salvar uma escola com nome em branco' do
    escolaTeste = Escola.new(nome: '',cpfDoDiretor: '12345678910')
    assert_not escolaTeste.save, "Salvou escola com o nome em branco"
  end

  test 'Nao deve ser possivel cadastrar uma escola com cpf do diretor invalido' do
    escolaTeste1 = Escola.new(nome: 'EscolaTeste',cpfDoDiretor: '1234567')
    assert_not escolaTeste1.save,"Salvou a escola com cpf de adm invalido"
  end
end
