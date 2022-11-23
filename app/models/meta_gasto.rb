# == Schema Information
#
# Table name: meta_gastos
#
#  id           :bigint           not null, primary key
#  data_expirar :datetime
#  valor        :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint
#
# Indexes
#
#  index_meta_gastos_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class MetaGasto < ApplicationRecord
    belongs_to :user
end
