class Usuario < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable,
  :trackable, :confirmable, :lockable

  # Enum para nível de acesso
  enum nivel_acesso: { admin: 0, gestor_de_rh: 1 }

  validates :nome, :email, :senha, :nivel_acesso, presence: true
  validates :email, uniqueness: true

  has_many :departamentos_usuarios
  has_many :departamentos, through: :departamentos_usuarios
end
