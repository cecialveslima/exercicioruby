require "test_helper"

class TipoPgtosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_pgto = tipo_pgtos(:one)
  end

  test "should get index" do
    get tipo_pgtos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_pgto_url
    assert_response :success
  end

  test "should create tipo_pgto" do
    assert_difference("TipoPgto.count") do
      post tipo_pgtos_url, params: { tipo_pgto: { dscPgto: @tipo_pgto.dscPgto, idPgto: @tipo_pgto.idPgto } }
    end

    assert_redirected_to tipo_pgto_url(TipoPgto.last)
  end

  test "should show tipo_pgto" do
    get tipo_pgto_url(@tipo_pgto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_pgto_url(@tipo_pgto)
    assert_response :success
  end

  test "should update tipo_pgto" do
    patch tipo_pgto_url(@tipo_pgto), params: { tipo_pgto: { dscPgto: @tipo_pgto.dscPgto, idPgto: @tipo_pgto.idPgto } }
    assert_redirected_to tipo_pgto_url(@tipo_pgto)
  end

  test "should destroy tipo_pgto" do
    assert_difference("TipoPgto.count", -1) do
      delete tipo_pgto_url(@tipo_pgto)
    end

    assert_redirected_to tipo_pgtos_url
  end
end
