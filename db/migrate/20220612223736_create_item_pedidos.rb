class CreateItemPedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :item_pedidos do |t|
      t.integer :idPedido
      t.integer :idProd
      t.integer :qtdItem

      t.timestamps
    end
  end
end
