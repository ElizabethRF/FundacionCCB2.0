class User <ActiveRecord::Base
    has_many :projects, dependent: :destroy
    before_save {self.correo = correo.downcase}
    validates :name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    
    validates :mail, presence: true,
                uniqueness:{case_sensitive: false},
                length: {maximum: 100},
                format: {with: VALID_EMAIL_REGEX}
    validates :telephone_number, presence: true,
                length: {minimum:10, maximum: 25}
    validates :last_name, presence: true,
                length: {minimum:1, maximum: 25}
    validates :second_last_name, presence: true,
                length: {minimum:1, maximum: 25}
    validates :username, presence: true,
                uniqueness: {case_sensitive: false}, 
                length: {minimum:5, maximum: 25}
    has_secure_password
end 
