class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	#validates that the title is at least 3 characters long
	validates :title, presence: true, length: { minimum: 3 }
end
