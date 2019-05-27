class User < ApplicationRecord
    before_save :downcase_email

    validates :name, presence: true, length: { maximum: 50 }
    validates :dob, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 128 }, 
    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :address, presence: true, length: { maximum: 256 }
    validates :gender, presence: true
    validates :job_id, presence: true, length: { maximum: 5 }


    private
        def downcase_email
            self.email = email.downcase
        end
end
