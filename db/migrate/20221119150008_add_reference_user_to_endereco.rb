class AddReferenceUserToEndereco < ActiveRecord::Migration[6.1]
  def change
    add_reference :enderecos, :user, foreign_key: true
  end
end
