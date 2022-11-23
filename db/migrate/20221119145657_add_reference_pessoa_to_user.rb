class AddReferencePessoaToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :pessoa, foreign_key: true
  end
end
