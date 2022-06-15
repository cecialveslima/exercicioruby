class CreateDepartamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :departamentos do |t|
      t.integer :idDpto
      t.string :dscDpto

      t.timestamps
    end
  end
end
