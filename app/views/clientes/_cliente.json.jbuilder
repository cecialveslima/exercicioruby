json.extract! cliente, :id, :idCli, :nomCli, :cpfCnpj, :statusCli, :telefone, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
