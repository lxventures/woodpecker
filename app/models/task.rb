class Task < ActiveRecord::Base

	belongs_to :user

	validates :title, presence: true
	validates :start_at, presence: true
	validates :recurs_amount, presence: true
	validates :recurs_type, presence: true
	validates :user, presence: true

  before_create :set_uuid

  private

  	def set_uuid
  		self.uuid = SecureRandom.uuid
  	end
end
