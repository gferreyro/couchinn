class AccommodationType < ActiveRecord::Base
  default_scope -> { order("descripcion") }
  validates :descripcion , presence: true,  uniqueness: {case_sensitive: false ,message: "ya existe"}
  end
