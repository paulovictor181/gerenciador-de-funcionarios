json.extract! cargo, :id, :nome, :descricao, :departamento_id, :nivel, :salario_base, :requisitos, :beneficios, :status, :created_at, :updated_at
json.url cargo_url(cargo, format: :json)
json.departamento do
  json.extract! cargo.departamento, :id, :nome, :descricao, :codigo, :localizacao, :status, :created_at, :updated_at
  json.url departamento_url(cargo.departamento, format: :json)
end
