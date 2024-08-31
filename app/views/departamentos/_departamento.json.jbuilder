json.extract! departamento, :id, :nome, :descricao, :codigo, :localizacao, :status, :created_at, :updated_at
json.url departamento_url(departamento, format: :json)
