class User < ApplicationRecord
    has_many :pictures
    has_many :comments
    has_secure_password
    has_secure_password :recovery_password, validations: false
    #accepts_nested_attributes_for :pictures
    #accepts_nested_attributes_for :comments

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
