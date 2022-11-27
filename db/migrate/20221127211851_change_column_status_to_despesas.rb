class ChangeColumnStatusToDespesas < ActiveRecord::Migration[6.1]
  rename_column :categorias_despesas, :status, :ativo
  change_column :categorias_despesas, :ativo, :boolean, default: :true

end
