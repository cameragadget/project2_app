class User < ActiveRecord::Base
  has_secure_password
  has_many :classifieds, dependent: :destroy
  has_many :rumors, dependent: :destroy
  validates :email, presence: true, uniqueness: true
end
