class Comment < ActiveRecord::Base
	validates :body, presence: true, length: { minimum: 6 }
	validates :menu_item, presence: true


	belongs_to :menu_item
end
