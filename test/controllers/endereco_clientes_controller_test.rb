require "test_helper"

class EnderecoClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @endereco_cliente = endereco_clientes(:one)
  end

  test "should get index" do
    get endereco_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_endereco_cliente_url
    assert_response :success
  end

  test "should create endereco_cliente" do
    assert_difference("EnderecoCliente.count") do
      post endereco_clientes_url, params: { endereco_cliente: { bairro: @endereco_cliente.bairro, cep: @endereco_cliente.cep, cidade: @endereco_cliente.cidade, endCorrespondencia: @endereco_cliente.endCorrespondencia, estado: @endereco_cliente.estado, idCli: @endereco_cliente.idCli, idEndCli: @endereco_cliente.idEndCli, logradouro: @endereco_cliente.logradouro, numero: @endereco_cliente.numero } }
    end

    assert_redirected_to endereco_cliente_url(EnderecoCliente.last)
  end

  test "should show endereco_cliente" do
    get endereco_cliente_url(@endereco_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_endereco_cliente_url(@endereco_cliente)
    assert_response :success
  end

  test "should update endereco_cliente" do
    patch endereco_cliente_url(@endereco_cliente), params: { endereco_cliente: { bairro: @endereco_cliente.bairro, cep: @endereco_cliente.cep, cidade: @endereco_cliente.cidade, endCorrespondencia: @endereco_cliente.endCorrespondencia, estado: @endereco_cliente.estado, idCli: @endereco_cliente.idCli, idEndCli: @endereco_cliente.idEndCli, logradouro: @endereco_cliente.logradouro, numero: @endereco_cliente.numero } }
    assert_redirected_to endereco_cliente_url(@endereco_cliente)
  end

  test "should destroy endereco_cliente" do
    assert_difference("EnderecoCliente.count", -1) do
      delete endereco_cliente_url(@endereco_cliente)
    end

    assert_redirected_to endereco_clientes_url
  end
end
