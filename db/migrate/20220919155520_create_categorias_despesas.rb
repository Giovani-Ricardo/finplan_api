class CreateCategoriasDespesas < ActiveRecord::Migration[6.1]
  def change
    create_table :categorias_despesas do |t|
      t.string :nome
      t.string :descricao
      t.decimal :percentual
      t.boolean :status

      t.timestamps
    end
  end
end
