# == Schema Information
#
# Table name: enderecos
#
#  id         :bigint           not null, primary key
#  cep        :string
#  cidade     :string
#  estado     :string
#  logradouro :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_enderecos_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class EnderecoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
