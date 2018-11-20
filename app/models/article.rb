class Article < ApplicationRecord
	has_many :comments
	validates :title, presence: true, length: { minimum: 5}  

	scope :newest, ->{order created_at: :desc}

	# def self.newest
	# 	order created_at: :desc
	# end
end
