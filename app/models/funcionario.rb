class Funcionario < ApplicationRecord
  belongs_to :cargo
  enum status: { ativo: 0, inativo: 1, 'Em licença': 2 }
  enum genero: { Masculino: 0, Feminino: 1, Outros: 2 }

  VALID_PHONE_NUMBER_REGEX = /\A\(\d{2}\) \d \d{4}-\d{4}\z/

  validates :nome_completo, :data_nascimento, :genero, :cpf, :rg, :endereco, :numero, :bairro, :cidade, :estado, :cep, :email, :cargo, :data_contratacao, :salario, presence: true
  validates :telefone, presence: true, format: { with: VALID_PHONE_NUMBER_REGEX, message: "deve estar no formato (99) 9 9999-9999" }


  before_create do
    self.status = "ativo"
  end
end
