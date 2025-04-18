class User < ApplicationRecord
  has_secure_password
  has_many :resumes, dependent: :destroy

  before_create :generate_auth_token

  private
 
  def generate_auth_token
    self.auth_token = SecureRandom.hex(20)
  end
end
