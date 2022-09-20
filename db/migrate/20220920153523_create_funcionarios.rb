class CreateFuncionarios < ActiveRecord::Migration[6.1]
  def change
    create_table :funcionarios do |t|
      t.string :cargo
      t.decimal :salario
      t.date :data_contratacao
      t.date :data_demissao
      t.boolean :ativo
      t.references :pessoa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
