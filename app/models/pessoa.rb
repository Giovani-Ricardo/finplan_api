# == Schema Information
#
# Table name: pessoas
#
#  id              :bigint           not null, primary key
#  cpf             :string
#  data_nascimento :date
#  nome            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Pessoa < ApplicationRecord
    has_one :funcionario, class_name: 'Funcionario', dependent: :destroy
end
