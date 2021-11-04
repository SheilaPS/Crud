require "test_helper"

class LivrariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @livrarium = livraria(:one)
  end

  test "should get index" do
    get livraria_url
    assert_response :success
  end

  test "should get new" do
    get new_livrarium_url
    assert_response :success
  end

  test "should create livrarium" do
    assert_difference('Livrarium.count') do
      post livraria_url, params: { livrarium: { Autor: @livrarium.Autor, Avaliação: @livrarium.Avaliação, Editora: @livrarium.Editora, Páginas: @livrarium.Páginas, Titulo: @livrarium.Titulo } }
    end

    assert_redirected_to livrarium_url(Livrarium.last)
  end

  test "should show livrarium" do
    get livrarium_url(@livrarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_livrarium_url(@livrarium)
    assert_response :success
  end

  test "should update livrarium" do
    patch livrarium_url(@livrarium), params: { livrarium: { Autor: @livrarium.Autor, Avaliação: @livrarium.Avaliação, Editora: @livrarium.Editora, Páginas: @livrarium.Páginas, Titulo: @livrarium.Titulo } }
    assert_redirected_to livrarium_url(@livrarium)
  end

  test "should destroy livrarium" do
    assert_difference('Livrarium.count', -1) do
      delete livrarium_url(@livrarium)
    end

    assert_redirected_to livraria_url
  end
end
