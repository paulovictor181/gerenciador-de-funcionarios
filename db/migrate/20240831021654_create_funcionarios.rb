class CreateFuncionarios < ActiveRecord::Migration[7.2]
  def change
    create_table :funcionarios do |t|
      t.string :nome_completo
      t.date :data_nascimento
      t.string :genero
      t.string :cpf
      t.string :rg
      t.string :endereco
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :email
      t.string :cargo
      t.date :data_contratacao
      t.decimal :salario
      t.string :status

      t.timestamps
    end
  end
end
