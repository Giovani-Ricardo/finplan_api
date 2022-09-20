# == Schema Information
#
# Table name: depesas
#
#  id                    :integer          not null, primary key
#  data_quitacao         :date
#  data_vencimento       :date
#  quitado               :boolean
#  status                :boolean
#  valor                 :decimal(, )
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  categorias_depesas_id :integer
#  usuario_id            :integer          not null
#
# Indexes
#
#  index_depesas_on_categorias_depesas_id  (categorias_depesas_id)
#  index_depesas_on_usuario_id             (usuario_id)
#
# Foreign Keys
#
#  categorias_depesas_id  (categorias_depesas_id => categorias_depesas.id)
#  usuario_id             (usuario_id => usuarios.id)
#
require "test_helper"

class DepesaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end