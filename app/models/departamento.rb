class Departamento < ApplicationRecord
  validates :nome, :descricao, :codigo, :localizacao, presence: true
  before_create do
    self.status = "Ativo"
  end
end
