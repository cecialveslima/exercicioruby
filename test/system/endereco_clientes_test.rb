require "application_system_test_case"

class EnderecoClientesTest < ApplicationSystemTestCase
  setup do
    @endereco_cliente = endereco_clientes(:one)
  end

  test "visiting the index" do
    visit endereco_clientes_url
    assert_selector "h1", text: "Endereco clientes"
  end

  test "should create endereco cliente" do
    visit endereco_clientes_url
    click_on "New endereco cliente"

    fill_in "Bairro", with: @endereco_cliente.bairro
    fill_in "Cep", with: @endereco_cliente.cep
    fill_in "Cidade", with: @endereco_cliente.cidade
    check "Endcorrespondencia" if @endereco_cliente.endCorrespondencia
    fill_in "Estado", with: @endereco_cliente.estado
    fill_in "Idcli", with: @endereco_cliente.idCli
    fill_in "Idendcli", with: @endereco_cliente.idEndCli
    fill_in "Logradouro", with: @endereco_cliente.logradouro
    fill_in "Numero", with: @endereco_cliente.numero
    click_on "Create Endereco cliente"

    assert_text "Endereco cliente was successfully created"
    click_on "Back"
  end

  test "should update Endereco cliente" do
    visit endereco_cliente_url(@endereco_cliente)
    click_on "Edit this endereco cliente", match: :first

    fill_in "Bairro", with: @endereco_cliente.bairro
    fill_in "Cep", with: @endereco_cliente.cep
    fill_in "Cidade", with: @endereco_cliente.cidade
    check "Endcorrespondencia" if @endereco_cliente.endCorrespondencia
    fill_in "Estado", with: @endereco_cliente.estado
    fill_in "Idcli", with: @endereco_cliente.idCli
    fill_in "Idendcli", with: @endereco_cliente.idEndCli
    fill_in "Logradouro", with: @endereco_cliente.logradouro
    fill_in "Numero", with: @endereco_cliente.numero
    click_on "Update Endereco cliente"

    assert_text "Endereco cliente was successfully updated"
    click_on "Back"
  end

  test "should destroy Endereco cliente" do
    visit endereco_cliente_url(@endereco_cliente)
    click_on "Destroy this endereco cliente", match: :first

    assert_text "Endereco cliente was successfully destroyed"
  end
end
