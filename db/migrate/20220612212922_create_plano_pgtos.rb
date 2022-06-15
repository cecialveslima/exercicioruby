class CreatePlanoPgtos < ActiveRecord::Migration[7.0]
  def change
    create_table :plano_pgtos do |t|
      t.integer :idPlano
      t.string :dscPlanoPagto
      t.integer :idPgto

      t.timestamps
    end
  end
end
