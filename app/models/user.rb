class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: true

end
