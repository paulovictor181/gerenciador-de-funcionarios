class Departamento < ApplicationRecord
  validates :nome, :descricao, :codigo, :localizacao, presence: true
  enum status: { ativo: 0, inativo: 1 }

  def formatted_codigo
    "DEP#{codigo}"
  end

  before_create do
    self.status = "ativo"
  end
end
