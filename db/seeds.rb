AccommodationType.find_or_create_by(descripcion:'Casa')
if User.find_by(email:'admin@admin.com').nil?
  User.create(email:'admin@admin.com',password:'123456',password_confirmation:'123456')
end
puts 'todo hecho'
