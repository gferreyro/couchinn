class AccommodationType < ActiveRecord::Base
  default_scope -> { order("descripcion") }
  validates :descripcion , presence: true, presence: { message: "no puede estar en blanco."},  uniqueness: {case_sensitive: false ,message: "ya existe."}
  has_many :accomodations, dependent: :destroy
end
