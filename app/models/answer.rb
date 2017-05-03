class Answer < ActiveRecord::Base
  belongs_to :question
    has_many :answers_projects
    has_many :projects, through: :answers_projects
    
    validates :answer, presence: true, length: {minimum: 1}
end
