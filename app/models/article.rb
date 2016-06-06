class Article < ActiveRecord::Base
      	has_many :comments, dependent: :destroy
	has_many :instances, dependent: :destroy

	validates :title, presence: true,
      	length: { minimum: 5 }
end
