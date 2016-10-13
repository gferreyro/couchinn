class Request < ActiveRecord::Base
	belongs_to :accomodation
	belongs_to :user
  	validates :accomodation_id, presence: true, presence: { message: "no puede estar en blanco."}
  	validates :user_id, presence: true, presence: { message: "no puede estar en blanco."}
  	validates :from, presence: true, presence: { message: "no puede estar en blanco."}
  	validates :to, presence: true, presence: { message: "no puede estar en blanco."}
end
