class AddReferenceUserToCategoriaDespesas < ActiveRecord::Migration[6.1]
  def change
    add_reference :categorias_despesas, :user, foreign_key: true
  end
end
