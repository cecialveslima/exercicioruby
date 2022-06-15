class CreateSubCategoria < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_categoria do |t|
      t.integer :idSubCat
      t.string :dscSubCat
      t.integer :idCat

      t.timestamps
    end
  end
end
