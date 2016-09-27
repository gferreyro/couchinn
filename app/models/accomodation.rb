class Accomodation < ActiveRecord::Base
	belongs_to :user
  	validates :accommodation_type_id, presence: true, presence: { message: "no puede estar en blanco."}
end
