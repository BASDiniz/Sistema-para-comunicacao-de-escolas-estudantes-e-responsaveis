require 'test_helper'

class EscolaTest < ActiveSupport::TestCase
  test 'Nao deve ser possivel salvar uma escola com nome em branco' do
      escolaTeste = Escola.new(nome: '',cpf_do_administrador: '12345678910',numero_de_estudantes: 0,numero_de_professores: 0,numero_de_series: 0,numero_de_turmas: 0)
      assert_not escolaTeste.save, "Salvou escola com o nome em branco"
  end
  test 'Nao deve ser possivel cadastrar uma escola com cpf do administrador invalido' do
    escolaTeste1 = Escola.new(nome: 'EscolaTeste',cpf_do_administrador: '1234567',numero_de_estudantes: 0,numero_de_professores: 0,numero_de_series: 0,numero_de_turmas: 0)
    #cpf nao tem 11 digitos
    assert_not escolaTeste1.save,"Salvou a escola com cpf de adm invalido"
  end
  test 'Deve cadastrar uma escola com todos os campos ok' do
      escolaTeste2 = Escola.new(nome: 'EscolaTeste2',cpf_do_administrador: '12345678910',numero_de_estudantes: 0,numero_de_professores: 0,numero_de_series: 0,numero_de_turmas: 0)
      assert escolaTeste2.save, "Nao salvou escola com campos OK"
  end
  test 'Nao deve ser possivel cadastrar escola com todos os campos em branco' do
      escolaTeste3 = Escola.new()
      assert_not escolaTeste3.save, 'Salvou escola com campos em branco'
  end
end
