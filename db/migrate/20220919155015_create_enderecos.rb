class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
