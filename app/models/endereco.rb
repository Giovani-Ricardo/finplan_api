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
class Endereco < ApplicationRecord
  belongs_to :usuario
end
