class CreateMarcas < ActiveRecord::Migration[7.0]
  def change
    create_table :marcas do |t|
      t.integer :codMar
      t.string :dscMar

      t.timestamps
    end
  end
end
