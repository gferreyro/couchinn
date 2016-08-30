class AccommodationType < ActiveRecord::Base
  default_scope -> { order("descripcion") }
end
