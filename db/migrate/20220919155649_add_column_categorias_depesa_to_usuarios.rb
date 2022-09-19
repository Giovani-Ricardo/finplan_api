class AddColumnCategoriasDepesaToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_reference :usuarios, :categorias_despesa, foreign_key: true
  end
end
