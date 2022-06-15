class CreateEnderecoClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :endereco_clientes do |t|
      t.integer :idEndCli
      t.integer :idCli
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.boolean :endCorrespondencia

      t.timestamps
    end
  end
end
