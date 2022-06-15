class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.integer :idProd
      t.string :dscProd
      t.integer :codMar
      t.integer :idCat
      t.decimal :valor
      t.integer :qtd

      t.timestamps
    end
  end
end
