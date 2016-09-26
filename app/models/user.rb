class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :accomodations
  def nombre_completo
  	"#{nombre} #{apellido}"
  end
  validates :nombre, presence: true, presence: { message: "no puede estar en blanco."}
  validates :apellido, presence: true, presence: { message: "no puede estar en blanco."}
  validates :fecha_nacimiento, presence: true, presence: { message: "no puede estar en blanco."}
  validates :telefono, presence: true, presence: { message: "no puede estar en blanco."}
end
