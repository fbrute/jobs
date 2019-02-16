require 'test_helper'

class CombattantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combattant = combattants(:one)
  end

  test "should get index" do
    get combattants_url
    assert_response :success
  end

  test "should get new" do
    get new_combattant_url
    assert_response :success
  end

  test "should create combattant" do
    assert_difference('Combattant.count') do
      post combattants_url, params: { combattant: { nom: @combattant.nom, points_d_attaque: 16, points_de_vie: 90 } }
    end

    assert_redirected_to combattant_url(Combattant.last)
  end

  test "should show combattant" do
    get combattant_url(@combattant)
    assert_response :success
  end

  test "should get edit" do
    get edit_combattant_url(@combattant)
    assert_response :success
  end

  test "should update combattant" do
    patch combattant_url(@combattant), params: { combattant: { nom: @combattant.nom, points_d_attaque:17, points_de_vie: 95 } }
    assert_redirected_to combattant_url(@combattant)
  end

  test "should destroy combattant" do
    assert_difference('Combattant.count', -1) do
      delete combattant_url(@combattant)
    end

    assert_redirected_to combattants_url
  end
end
