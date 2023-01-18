class User < ApplicationRecord

    has_secure_password

    has_many :listings
    has_many :reviews
    has_many :likes

    validates :email, presence: true, uniqueness: true, format: { with:
    URI::MailTo::EMAIL_REGEXP }

    PASSWORD_REQUIREMENTS = /\A
        (?=.{8,})
        (?=.*\d)
        (?=.*[a-z])
        (?=.*[A-Z])
        (?=.*[[:^alnum:]])
    /x
    validates :password, presence: true, format: PASSWORD_REQUIREMENTS

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true, uniqueness: true
end

