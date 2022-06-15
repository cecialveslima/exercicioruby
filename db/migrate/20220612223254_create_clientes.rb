class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.integer :idCli
      t.string :nomCli
      t.string :cpfCnpj
      t.boolean :statusCli
      t.string :telefone

      t.timestamps
    end
  end
end
