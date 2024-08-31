class Cargo < ApplicationRecord
  belongs_to :departamento
  enum nivel: { junior: 0, pleno: 1, senior: 2, nao_se_aplica: 3 }
  enum status: { ativo: 0, inativo: 1 }

  validates :nome, :descricao, :nivel, :salario_base, :requisitos, :beneficios, presence: true
  validates :salario_base, numericality: { greater_than: 0 }

  before_create do
    self.status = "ativo"
  end
end
