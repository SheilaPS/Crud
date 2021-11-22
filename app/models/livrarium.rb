class Livrarium < ApplicationRecord
    with_options presence: true do
        validates :Titulo,:Autor,:Páginas,:Editora
        validates :Avaliação, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }
    end
    


end
