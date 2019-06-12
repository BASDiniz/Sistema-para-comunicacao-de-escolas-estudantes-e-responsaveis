require 'test_helper'

class AnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ano = anos(:one)
  end

  test "should get index" do
    get anos_url
    assert_response :success
  end

  test "should get new" do
    get new_ano_url
    assert_response :success
  end

  test "should create ano" do
    assert_difference('Ano.count') do
      post anos_url, params: { ano: { escola_id: @ano.escola_id, nome: @ano.nome, turno: @ano.turno } }
    end

    assert_redirected_to ano_url(Ano.last)
  end

  test "should show ano" do
    get ano_url(@ano)
    assert_response :success
  end

  test "should get edit" do
    get edit_ano_url(@ano)
    assert_response :success
  end

  test "should update ano" do
    patch ano_url(@ano), params: { ano: { escola_id: @ano.escola_id, nome: @ano.nome, turno: @ano.turno } }
    assert_redirected_to ano_url(@ano)
  end

  test "should destroy ano" do
    assert_difference('Ano.count', -1) do
      delete ano_url(@ano)
    end

    assert_redirected_to anos_url
  end
end
