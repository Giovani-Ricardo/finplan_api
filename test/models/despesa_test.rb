# == Schema Information
#
# Table name: despesas
#
#  id                    :bigint           not null, primary key
#  alertar_vencimento    :boolean          default(FALSE)
#  ativo                 :boolean
#  data_quitacao         :date
#  data_vencimento       :date
#  descricao             :string
#  quitado               :boolean          default(FALSE)
#  valor                 :decimal(, )
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  categorias_despesa_id :bigint           not null
#  user_id               :bigint
#
# Indexes
#
#  index_despesas_on_categorias_despesa_id  (categorias_despesa_id)
#  index_despesas_on_user_id                (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (categorias_despesa_id => categorias_despesas.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class DespesaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
