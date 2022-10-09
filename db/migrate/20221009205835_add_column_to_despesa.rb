class AddColumnToDespesa < ActiveRecord::Migration[6.1]
  def change
    add_column :despesas, :descricao, :string
  end
end
