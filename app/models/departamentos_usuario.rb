class DepartamentosUsuario < ApplicationRecord
  belongs_to :usuario
  belongs_to :departamento
end
