class AddReferenceUserToDespesa < ActiveRecord::Migration[6.1]
  def change
    add_reference :despesas, :user, foreign_key: true
  end
end
