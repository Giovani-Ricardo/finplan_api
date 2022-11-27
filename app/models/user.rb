# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  allow_password_change  :boolean          default(FALSE)
#  ativo                  :boolean
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  nome                   :string
#  provider               :string           default("email"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  tokens                 :json
#  uid                    :string           default(""), not null
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  pessoa_id              :bigint
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_pessoa_id             (pessoa_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (pessoa_id => pessoas.id)
#
class User < ActiveRecord::Base

  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable,
         :confirmable,
         :trackable

  include DeviseTokenAuth::Concerns::User

  before_validation :set_uid

  has_many :despesas, class_name: 'Despesa', dependent: :delete_all
  has_many :categorias, class_name: 'CategoriasDespesa', dependent: :delete_all
  has_one :endereco, class_name: 'Endereco', dependent: :destroy
  has_one :meta, class_name: 'MetaGasto', dependent: :destroy

  accepts_nested_attributes_for :endereco, allow_destroy: true

  def with_endereco
    build_endereco if endereco.nil?
    self
  end

  private


  def set_uid
    self[:uid] = self[:email] if self[:uid].blank? && self[:email].present?
  end
end
