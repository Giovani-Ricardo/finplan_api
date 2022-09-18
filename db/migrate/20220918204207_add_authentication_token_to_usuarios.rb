class AddAuthenticationTokenToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :authentication_token, :string, limit: 30
    add_index :usuarios, :authentication_token, unique: true
  end
end
