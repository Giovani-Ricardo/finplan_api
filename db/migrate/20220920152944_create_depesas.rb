class CreateDepesas < ActiveRecord::Migration[6.1]
  def change
    create_table :depesas do |t|
      t.decimal :valor
      t.boolean :status
      t.date :data_vencimento
      t.references :usuario, null: false, foreign_key: true
      t.references :categorias_depesas, foreign_key: true
      t.boolean :quitado
      t.date :data_quitacao

      t.timestamps
    end
  end
end
