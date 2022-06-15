json.extract! pedido, :id, :idPedido, :idCli, :idPgto, :dataPedido, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
