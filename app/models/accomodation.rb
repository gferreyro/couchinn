class Accomodation < ActiveRecord::Base
	belongs_to :accommodation_type
	belongs_to :user
end
