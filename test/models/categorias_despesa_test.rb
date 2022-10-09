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
#
require "test_helper"

class CategoriasDespesaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
