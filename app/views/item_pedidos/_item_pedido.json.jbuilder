json.extract! item_pedido, :id, :idPedido, :idProd, :qtdItem, :created_at, :updated_at
json.url item_pedido_url(item_pedido, format: :json)
