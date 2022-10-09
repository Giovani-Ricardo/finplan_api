# == Schema Information
#
# Table name: depesas
#
#  id                     :bigint           not null, primary key
#  data_quitacao          :date
#  data_vencimento        :date
#  quitado                :boolean
#  status                 :boolean
#  valor                  :decimal(, )
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  categorias_despesas_id :bigint
#
# Indexes
#
#  index_depesas_on_categorias_despesas_id  (categorias_despesas_id)
#
# Foreign Keys
#
#  fk_rails_...  (categorias_despesas_id => categorias_despesas.id)
#
require "test_helper"

class DepesaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
