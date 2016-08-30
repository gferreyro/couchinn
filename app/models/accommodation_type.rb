class AccommodationType < ActiveRecord::Base
  default_scope -> { order("descripcion") }
  validates :descripcion , presence: true,presence: { message: " es requerido"},  uniqueness: {case_sensitive: false ,message: "ya esta este tipo"}
  end
