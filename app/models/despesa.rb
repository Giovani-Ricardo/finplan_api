# == Schema Information
#
# Table name: despesas
#
#  id                    :bigint           not null, primary key
#  ativo                 :boolean
#  data_quitacao         :date
#  data_vencimento       :date
#  descricao             :string
#  quitado               :boolean
#  valor                 :decimal(, )
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  categorias_despesa_id :bigint           not null
#
# Indexes
#
#  index_despesas_on_categorias_despesa_id  (categorias_despesa_id)
#
# Foreign Keys
#
#  fk_rails_...  (categorias_despesa_id => categorias_despesas.id)
#
class Despesa < ApplicationRecord
    belongs_to :categorias_despesa, class_name: 'CategoriasDespesa'
end
