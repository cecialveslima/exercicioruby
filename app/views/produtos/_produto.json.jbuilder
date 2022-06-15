json.extract! produto, :id, :idProd, :dscProd, :codMar, :idCat, :valor, :qtd, :created_at, :updated_at
json.url produto_url(produto, format: :json)
