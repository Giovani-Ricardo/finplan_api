# == Schema Information
#
# Table name: meta_gastos
#
#  id           :integer          not null, primary key
#  data_expirar :datetime
#  valor        :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  usuario_id   :integer          not null
#
# Indexes
#
#  index_meta_gastos_on_usuario_id  (usuario_id)
#
# Foreign Keys
#
#  usuario_id  (usuario_id => usuarios.id)
#
require "test_helper"

class MetaGastoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
