require "application_system_test_case"

class ItemPedidosTest < ApplicationSystemTestCase
  setup do
    @item_pedido = item_pedidos(:one)
  end

  test "visiting the index" do
    visit item_pedidos_url
    assert_selector "h1", text: "Item pedidos"
  end

  test "should create item pedido" do
    visit item_pedidos_url
    click_on "New item pedido"

    fill_in "Idpedido", with: @item_pedido.idPedido
    fill_in "Idprod", with: @item_pedido.idProd
    fill_in "Qtditem", with: @item_pedido.qtdItem
    click_on "Create Item pedido"

    assert_text "Item pedido was successfully created"
    click_on "Back"
  end

  test "should update Item pedido" do
    visit item_pedido_url(@item_pedido)
    click_on "Edit this item pedido", match: :first

    fill_in "Idpedido", with: @item_pedido.idPedido
    fill_in "Idprod", with: @item_pedido.idProd
    fill_in "Qtditem", with: @item_pedido.qtdItem
    click_on "Update Item pedido"

    assert_text "Item pedido was successfully updated"
    click_on "Back"
  end

  test "should destroy Item pedido" do
    visit item_pedido_url(@item_pedido)
    click_on "Destroy this item pedido", match: :first

    assert_text "Item pedido was successfully destroyed"
  end
end
