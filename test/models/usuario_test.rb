# == Schema Information
#
# Table name: usuarios
#
#  id                     :integer          not null, primary key
#  authentication_token   :string(30)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  pessoa_id              :integer          not null
#
# Indexes
#
#  index_usuarios_on_authentication_token  (authentication_token) UNIQUE
#  index_usuarios_on_email                 (email) UNIQUE
#  index_usuarios_on_pessoa_id             (pessoa_id)
#  index_usuarios_on_reset_password_token  (reset_password_token) UNIQUE
#
# Foreign Keys
#
#  pessoa_id  (pessoa_id => pessoas.id)
#
require "test_helper"

class UsuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
