require 'test_helper'

class EscolasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @escola = escolas(:one)
  end

  test "should get index" do
    get escolas_url
    assert_response :success
  end

  test "should get new" do
    get new_escola_url
    assert_response :success
  end

  test "should create escola" do
    assert_difference('Escola.count') do
      post escolas_url, params: { escola: { cpf_do_administrador: @escola.cpf_do_administrador, nome: @escola.nome, numero_de_estudantes: @escola.numero_de_estudantes, numero_de_professores: @escola.numero_de_professores, numero_de_series: @escola.numero_de_series, numero_de_turmas: @escola.numero_de_turmas } }
    end

    assert_redirected_to escola_url(Escola.last)
  end

  test "should show escola" do
    get escola_url(@escola)
    assert_response :success
  end

  test "should get edit" do
    get edit_escola_url(@escola)
    assert_response :success
  end

  test "should update escola" do
    patch escola_url(@escola), params: { escola: { cpf_do_administrador: @escola.cpf_do_administrador, nome: @escola.nome, numero_de_estudantes: @escola.numero_de_estudantes, numero_de_professores: @escola.numero_de_professores, numero_de_series: @escola.numero_de_series, numero_de_turmas: @escola.numero_de_turmas } }
    assert_redirected_to escola_url(@escola)
  end

  test "should destroy escola" do
    assert_difference('Escola.count', -1) do
      delete escola_url(@escola)
    end

    assert_redirected_to escolas_url
  end
end
