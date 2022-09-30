class CreateMetaGastos < ActiveRecord::Migration[6.1]
  def change
    create_table :meta_gastos do |t|
      t.decimal :valor
      t.references :usuario, null: false, foreign_key: true
      t.datetime :data_expirar

      t.timestamps
    end
  end
end
