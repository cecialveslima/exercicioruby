require "application_system_test_case"

class SubCategoriaTest < ApplicationSystemTestCase
  setup do
    @sub_categorium = sub_categoria(:one)
  end

  test "visiting the index" do
    visit sub_categoria_url
    assert_selector "h1", text: "Sub categoria"
  end

  test "should create sub categorium" do
    visit sub_categoria_url
    click_on "New sub categorium"

    fill_in "Dscsubcat", with: @sub_categorium.dscSubCat
    fill_in "Idcat", with: @sub_categorium.idCat
    fill_in "Idsubcat", with: @sub_categorium.idSubCat
    click_on "Create Sub categorium"

    assert_text "Sub categorium was successfully created"
    click_on "Back"
  end

  test "should update Sub categorium" do
    visit sub_categorium_url(@sub_categorium)
    click_on "Edit this sub categorium", match: :first

    fill_in "Dscsubcat", with: @sub_categorium.dscSubCat
    fill_in "Idcat", with: @sub_categorium.idCat
    fill_in "Idsubcat", with: @sub_categorium.idSubCat
    click_on "Update Sub categorium"

    assert_text "Sub categorium was successfully updated"
    click_on "Back"
  end

  test "should destroy Sub categorium" do
    visit sub_categorium_url(@sub_categorium)
    click_on "Destroy this sub categorium", match: :first

    assert_text "Sub categorium was successfully destroyed"
  end
end
