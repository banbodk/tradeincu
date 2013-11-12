class Post < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC')}
	validates :user_id, presence: true
	validates :content, presence: true, length: {maximum: 2000}
	# validates :name, presence: true, length: {maximum: 100}
	# validates :price, presence: true, length: {maximum: 10}
end
