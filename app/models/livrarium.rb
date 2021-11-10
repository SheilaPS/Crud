class Livrarium < ApplicationRecord
    with_options presence: true do
        validates :Titulo,:Autor,:Páginas,:Editora,:Avaliação
    end

end
