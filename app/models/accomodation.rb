class Accomodation < ActiveRecord::Base
	belongs_to :user
	belongs_to :accommodation_type
  	validates :accommodation_type_id, presence: true, presence: { message: "no puede estar en blanco."}

    def accommodation_type
      AccommodationType.find(self.accommodation_type_id).descripcion
    end
end
