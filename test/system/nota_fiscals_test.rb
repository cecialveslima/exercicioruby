require "application_system_test_case"

class NotaFiscalsTest < ApplicationSystemTestCase
  setup do
    @nota_fiscal = nota_fiscals(:one)
  end

  test "visiting the index" do
    visit nota_fiscals_url
    assert_selector "h1", text: "Nota fiscals"
  end

  test "should create nota fiscal" do
    visit nota_fiscals_url
    click_on "New nota fiscal"

    fill_in "Idnota", with: @nota_fiscal.idNota
    fill_in "Idpedido", with: @nota_fiscal.idPedido
    fill_in "Valornota", with: @nota_fiscal.valorNota
    click_on "Create Nota fiscal"

    assert_text "Nota fiscal was successfully created"
    click_on "Back"
  end

  test "should update Nota fiscal" do
    visit nota_fiscal_url(@nota_fiscal)
    click_on "Edit this nota fiscal", match: :first

    fill_in "Idnota", with: @nota_fiscal.idNota
    fill_in "Idpedido", with: @nota_fiscal.idPedido
    fill_in "Valornota", with: @nota_fiscal.valorNota
    click_on "Update Nota fiscal"

    assert_text "Nota fiscal was successfully updated"
    click_on "Back"
  end

  test "should destroy Nota fiscal" do
    visit nota_fiscal_url(@nota_fiscal)
    click_on "Destroy this nota fiscal", match: :first

    assert_text "Nota fiscal was successfully destroyed"
  end
end
