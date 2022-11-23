# == Schema Information
#
# Table name: categorias_despesas
#
#  id         :bigint           not null, primary key
#  descricao  :string
#  nome       :string
#  percentual :decimal(, )
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_categorias_despesas_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class CategoriasDespesaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
