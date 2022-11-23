class AddReferenceUserToMetaGasto < ActiveRecord::Migration[6.1]
  def change
    add_reference :meta_gastos, :user, foreign_key: true
  end
end
