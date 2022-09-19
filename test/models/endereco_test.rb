# == Schema Information
#
# Table name: enderecos
#
#  id         :integer          not null, primary key
#  cep        :string
#  cidade     :string
#  estado     :string
#  logradouro :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  usuario_id :integer          not null
#
# Indexes
#
#  index_enderecos_on_usuario_id  (usuario_id)
#
# Foreign Keys
#
#  usuario_id  (usuario_id => usuarios.id)
#
require "test_helper"

class EnderecoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
