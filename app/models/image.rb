class Image < ActiveRecord::Base
  	validates :url, presence: true, presence: { message: "no puede estar en blanco."}
  	validates :descripcion, presence: true, presence: { message: "no puede estar en blanco."}
end
