class CreateNotaFiscals < ActiveRecord::Migration[7.0]
  def change
    create_table :nota_fiscals do |t|
      t.integer :idNota
      t.integer :idPedido
      t.decimal :valorNota

      t.timestamps
    end
  end
end
