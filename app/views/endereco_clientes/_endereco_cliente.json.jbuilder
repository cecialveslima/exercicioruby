json.extract! endereco_cliente, :id, :idEndCli, :idCli, :logradouro, :numero, :bairro, :cidade, :estado, :cep, :endCorrespondencia, :created_at, :updated_at
json.url endereco_cliente_url(endereco_cliente, format: :json)
