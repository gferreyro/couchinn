class Question < ActiveRecord::Base
	belongs_to :accomodation
	belongs_to :user
end
