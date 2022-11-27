class ChangeColumnQuitadoToDespesas < ActiveRecord::Migration[6.1]
  change_column :despesas, :quitado, :boolean, default: :false
end
