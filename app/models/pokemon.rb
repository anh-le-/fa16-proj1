class Pokemon < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true, on: :create
	belongs_to :trainer
end
