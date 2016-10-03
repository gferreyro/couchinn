class AccommodationType < ActiveRecord::Base
  has_many :accomodations, dependent: :destroy
  default_scope -> { order("descripcion") }
  validates :descripcion , presence: true, presence: { message: "no puede estar en blanco."},  uniqueness: {case_sensitive: false ,message: "ya existe."}
end
