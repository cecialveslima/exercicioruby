require "test_helper"

class SubCategoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_categorium = sub_categoria(:one)
  end

  test "should get index" do
    get sub_categoria_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_categorium_url
    assert_response :success
  end

  test "should create sub_categorium" do
    assert_difference("SubCategorium.count") do
      post sub_categoria_url, params: { sub_categorium: { dscSubCat: @sub_categorium.dscSubCat, idCat: @sub_categorium.idCat, idSubCat: @sub_categorium.idSubCat } }
    end

    assert_redirected_to sub_categorium_url(SubCategorium.last)
  end

  test "should show sub_categorium" do
    get sub_categorium_url(@sub_categorium)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_categorium_url(@sub_categorium)
    assert_response :success
  end

  test "should update sub_categorium" do
    patch sub_categorium_url(@sub_categorium), params: { sub_categorium: { dscSubCat: @sub_categorium.dscSubCat, idCat: @sub_categorium.idCat, idSubCat: @sub_categorium.idSubCat } }
    assert_redirected_to sub_categorium_url(@sub_categorium)
  end

  test "should destroy sub_categorium" do
    assert_difference("SubCategorium.count", -1) do
      delete sub_categorium_url(@sub_categorium)
    end

    assert_redirected_to sub_categoria_url
  end
end
