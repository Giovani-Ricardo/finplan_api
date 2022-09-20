# == Schema Information
#
# Table name: funcionarios
#
#  id               :integer          not null, primary key
#  ativo            :boolean
#  cargo            :string
#  data_contratacao :date
#  data_demissao    :date
#  salario          :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  pessoa_id        :integer          not null
#
# Indexes
#
#  index_funcionarios_on_pessoa_id  (pessoa_id)
#
# Foreign Keys
#
#  pessoa_id  (pessoa_id => pessoas.id)
#
class Funcionario < ApplicationRecord
  belongs_to :pessoa
end
