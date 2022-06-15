class CreateTipoPgtos < ActiveRecord::Migration[7.0]
  def change
    create_table :tipo_pgtos do |t|
      t.integer :idPgto
      t.string :dscPgto

      t.timestamps
    end
  end
end
