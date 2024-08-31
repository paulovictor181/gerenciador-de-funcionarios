class Usuario < ApplicationRecord
  has_secure_password

  # Enum para nível de acesso
  enum nivel_acesso: { admin: 0, gestor_de_rh: 1 }

  validates :nome, :email, :senha, :nivel_acesso, presence: true
  validates :email, uniqueness: true

  has_many :departamentos_usuarios
  has_many :departamentos, through: :departamentos_usuarios
end
