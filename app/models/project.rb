class Project < ActiveRecord::Base
   belongs_to :user
    has_many :answer_project
    has_many :answers, through: :answer_project
    
    validates :title, presence: true, length: {minimum: 5 ,maximun:50 }
    validates :area, presence: true, length: {minimum: 5,maximun:50 }
    validates :amount, presence: true , length: {minimum: 1,maximun:9 }
    validates :starting, presence: true
    validates :description, presence: true , length: {minimum: 10}
    validates :location, presence: true,  length: {minimum: 10,maximun:200 }
    validates :volunteers, presence: true , length: {minimum: 1,maximun:6}
    validates :problem, presence: true, length: {minimum: 5,maximun:50 }
    validates :serves_num_people, presence: true,  length: {minimum: 1,maximun:6 }
    validates :user_id, presence: true
end
