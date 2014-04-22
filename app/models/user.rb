class User < ActiveRecord::Base

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :firstname, presence: true
validates :lastname, presence: true
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
before_save {self.email = email.downcase}

end
