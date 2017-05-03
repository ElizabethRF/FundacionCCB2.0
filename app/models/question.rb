class Question < ApplicationRecord	
    validates :question, presence: true
		validates :value, presence: true, length: { minimum: 1 }
		validates :area, presence: true, length: { minimum: 3 }
end
