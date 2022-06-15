class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.integer :idPedido
      t.integer :idCli
      t.integer :idPgto
      t.date :dataPedido

      t.timestamps
    end
  end
end
