json.extract! funcionario, :id, :nome_completo, :data_nascimento, :genero, :cpf, :rg, :endereco, :numero, :complemento, :bairro, :cidade, :estado, :cep, :telefone, :email, :cargo_id, :data_contratacao, :salario, :status, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
json.departamento do
  json.extract! cargo.departamento, :id, :nome, :descricao, :codigo, :localizacao, :status, :created_at, :updated_at
  json.url departamento_url(cargo.departamento, format: :json)
end
