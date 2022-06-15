require "test_helper"

class PlanoPgtosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plano_pgto = plano_pgtos(:one)
  end

  test "should get index" do
    get plano_pgtos_url
    assert_response :success
  end

  test "should get new" do
    get new_plano_pgto_url
    assert_response :success
  end

  test "should create plano_pgto" do
    assert_difference("PlanoPgto.count") do
      post plano_pgtos_url, params: { plano_pgto: { dscPlanoPagto: @plano_pgto.dscPlanoPagto, idPgto: @plano_pgto.idPgto, idPlano: @plano_pgto.idPlano } }
    end

    assert_redirected_to plano_pgto_url(PlanoPgto.last)
  end

  test "should show plano_pgto" do
    get plano_pgto_url(@plano_pgto)
    assert_response :success
  end

  test "should get edit" do
    get edit_plano_pgto_url(@plano_pgto)
    assert_response :success
  end

  test "should update plano_pgto" do
    patch plano_pgto_url(@plano_pgto), params: { plano_pgto: { dscPlanoPagto: @plano_pgto.dscPlanoPagto, idPgto: @plano_pgto.idPgto, idPlano: @plano_pgto.idPlano } }
    assert_redirected_to plano_pgto_url(@plano_pgto)
  end

  test "should destroy plano_pgto" do
    assert_difference("PlanoPgto.count", -1) do
      delete plano_pgto_url(@plano_pgto)
    end

    assert_redirected_to plano_pgtos_url
  end
end
