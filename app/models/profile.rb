class Profile < ActiveRecord::Base
	belongs_to :user

	Model.order(votes: :desc)
end
