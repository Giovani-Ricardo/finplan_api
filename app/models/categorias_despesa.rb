# == Schema Information
#
# Table name: categorias_despesas
#
#  id         :bigint           not null, primary key
#  ativo      :boolean          default(TRUE)
#  descricao  :string
#  nome       :string
#  percentual :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_categorias_despesas_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class CategoriasDespesa < ApplicationRecord
    has_many :despesas, class_name: 'Despesa'
    belongs_to :user

    validates :descricao, presence: true
    validates :nome, presence: true
    validates :percentual, presence: true

end
