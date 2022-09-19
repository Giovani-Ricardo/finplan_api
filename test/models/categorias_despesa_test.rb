# == Schema Information
#
# Table name: categorias_despesas
#
#  id         :integer          not null, primary key
#  descricao  :string
#  nome       :string
#  percentual :decimal(, )
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  usuario_id :integer          not null
#
# Indexes
#
#  index_categorias_despesas_on_usuario_id  (usuario_id)
#
# Foreign Keys
#
#  usuario_id  (usuario_id => usuarios.id)
#
require "test_helper"

class CategoriasDespesaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
