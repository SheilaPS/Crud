class CreateLivraria < ActiveRecord::Migration[6.1]
  def change
    create_table :livraria do |t|
      t.string :Titulo
      t.string :Autor
      t.integer :Páginas
      t.string :Editora
      t.integer :Avaliação

      t.timestamps
    end
  end
end
