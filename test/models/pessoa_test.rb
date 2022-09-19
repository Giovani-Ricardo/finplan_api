# == Schema Information
#
# Table name: pessoas
#
#  id              :integer          not null, primary key
#  cpf             :string
#  data_nascimento :date
#  nome            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class PessoaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
