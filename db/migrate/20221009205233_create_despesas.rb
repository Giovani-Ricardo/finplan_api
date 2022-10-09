class CreateDespesas < ActiveRecord::Migration[6.1]
  def change
    create_table :despesas do |t|
      t.decimal :valor
      t.boolean :ativo
      t.date :data_vencimento
      t.references :categorias_despesa, null: false, foreign_key: true
      t.boolean :quitado
      t.date :data_quitacao

      t.timestamps
    end
  end
end
