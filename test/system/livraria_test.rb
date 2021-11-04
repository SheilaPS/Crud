require "application_system_test_case"

class LivrariaTest < ApplicationSystemTestCase
  setup do
    @livrarium = livraria(:one)
  end

  test "visiting the index" do
    visit livraria_url
    assert_selector "h1", text: "Livraria"
  end

  test "creating a Livrarium" do
    visit livraria_url
    click_on "New Livrarium"

    fill_in "Autor", with: @livrarium.Autor
    fill_in "Avaliação", with: @livrarium.Avaliação
    fill_in "Editora", with: @livrarium.Editora
    fill_in "Páginas", with: @livrarium.Páginas
    fill_in "Titulo", with: @livrarium.Titulo
    click_on "Create Livrarium"

    assert_text "Livrarium was successfully created"
    click_on "Back"
  end

  test "updating a Livrarium" do
    visit livraria_url
    click_on "Edit", match: :first

    fill_in "Autor", with: @livrarium.Autor
    fill_in "Avaliação", with: @livrarium.Avaliação
    fill_in "Editora", with: @livrarium.Editora
    fill_in "Páginas", with: @livrarium.Páginas
    fill_in "Titulo", with: @livrarium.Titulo
    click_on "Update Livrarium"

    assert_text "Livrarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Livrarium" do
    visit livraria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Livrarium was successfully destroyed"
  end
end
