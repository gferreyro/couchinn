class Accomodation < ActiveRecord::Base
	belongs_to :user
	belongs_to :accommodation_type
    has_many :questions, dependent: :destroy
    has_many :requests, dependent: :destroy
  	validates :titulo, presence: true, presence: { message: "no puede estar en blanco."}
  	validates :descripcion, presence: true, presence: { message: "no puede estar en blanco."}
  	validates :accommodation_type_id, presence: true, presence: { message: "no puede estar en blanco."}
end
