class CreateMetaGastos < ActiveRecord::Migration[6.1]
  def change
    create_table :meta_gastos do |t|
      t.decimal :valor
      t.datetime :data_expirar

      t.timestamps
    end
  end
end
