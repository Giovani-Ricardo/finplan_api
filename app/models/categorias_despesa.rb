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
class CategoriasDespesa < ApplicationRecord
    belongs_to :usuario
end
