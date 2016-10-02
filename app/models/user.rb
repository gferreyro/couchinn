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
  validates :fecha_nacimiento, presence: true, presence: { message: "no puede estar en blanco."}, date: {before: Proc.new {Time.now - 18.years}, message: " inválida. Debe tener al menos 18 años"}
  validates :telefono, presence: true, presence: { message: "no puede estar en blanco."}
end
