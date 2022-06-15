require "application_system_test_case"

class PlanoPgtosTest < ApplicationSystemTestCase
  setup do
    @plano_pgto = plano_pgtos(:one)
  end

  test "visiting the index" do
    visit plano_pgtos_url
    assert_selector "h1", text: "Plano pgtos"
  end

  test "should create plano pgto" do
    visit plano_pgtos_url
    click_on "New plano pgto"

    fill_in "Dscplanopagto", with: @plano_pgto.dscPlanoPagto
    fill_in "Idpgto", with: @plano_pgto.idPgto
    fill_in "Idplano", with: @plano_pgto.idPlano
    click_on "Create Plano pgto"

    assert_text "Plano pgto was successfully created"
    click_on "Back"
  end

  test "should update Plano pgto" do
    visit plano_pgto_url(@plano_pgto)
    click_on "Edit this plano pgto", match: :first

    fill_in "Dscplanopagto", with: @plano_pgto.dscPlanoPagto
    fill_in "Idpgto", with: @plano_pgto.idPgto
    fill_in "Idplano", with: @plano_pgto.idPlano
    click_on "Update Plano pgto"

    assert_text "Plano pgto was successfully updated"
    click_on "Back"
  end

  test "should destroy Plano pgto" do
    visit plano_pgto_url(@plano_pgto)
    click_on "Destroy this plano pgto", match: :first

    assert_text "Plano pgto was successfully destroyed"
  end
end
