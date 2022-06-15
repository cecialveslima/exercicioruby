class CreateCategoria < ActiveRecord::Migration[7.0]
  def change
    create_table :categoria do |t|
      t.integer :idCat
      t.string :dscCat
      t.integer :idDpto

      t.timestamps
    end
  end
end
