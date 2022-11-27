class AddColumnToDespesas < ActiveRecord::Migration[6.1]
  def change
    add_column :despesas, :alertar_vencimento, :boolean, default: :false
  end
end
