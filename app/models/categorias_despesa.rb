# == Schema Information
#
# Table name: categorias_despesas
#
#  id         :bigint           not null, primary key
#  descricao  :string
#  nome       :string
#  percentual :decimal(, )
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CategoriasDespesa < ApplicationRecord
    has_many :depesas, class_name: 'Despesa'
end
