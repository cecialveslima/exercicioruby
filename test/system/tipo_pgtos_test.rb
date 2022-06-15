require "application_system_test_case"

class TipoPgtosTest < ApplicationSystemTestCase
  setup do
    @tipo_pgto = tipo_pgtos(:one)
  end

  test "visiting the index" do
    visit tipo_pgtos_url
    assert_selector "h1", text: "Tipo pgtos"
  end

  test "should create tipo pgto" do
    visit tipo_pgtos_url
    click_on "New tipo pgto"

    fill_in "Dscpgto", with: @tipo_pgto.dscPgto
    fill_in "Idpgto", with: @tipo_pgto.idPgto
    click_on "Create Tipo pgto"

    assert_text "Tipo pgto was successfully created"
    click_on "Back"
  end

  test "should update Tipo pgto" do
    visit tipo_pgto_url(@tipo_pgto)
    click_on "Edit this tipo pgto", match: :first

    fill_in "Dscpgto", with: @tipo_pgto.dscPgto
    fill_in "Idpgto", with: @tipo_pgto.idPgto
    click_on "Update Tipo pgto"

    assert_text "Tipo pgto was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo pgto" do
    visit tipo_pgto_url(@tipo_pgto)
    click_on "Destroy this tipo pgto", match: :first

    assert_text "Tipo pgto was successfully destroyed"
  end
end
