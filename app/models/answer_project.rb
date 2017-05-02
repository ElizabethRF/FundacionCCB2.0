class Answer < ActiveRecord::Base
   belongs_to :question
    has_many :answer_project
    has_many :projects, through: :answer_project
    
    validates :answer, presence: true, length: {minimum: 1}
end 
