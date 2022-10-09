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
#
class Endereco < ApplicationRecord
end
