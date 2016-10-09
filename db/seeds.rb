AccommodationType.find_or_create_by(descripcion:'Casa')
if User.find_by(email:'admin@admin.com').nil?
  User.create(email:'admin@admin.com',password:'123456',password_confirmation:'123456',nombre:'Compumundo',apellido:'hypermegared',fecha_nacimiento:'1980-08-30',telefono:'2396429786',premium:true)
  puts 'Usuario administrador agregado'
else
  User.where(email:'admin@admin.com').update(nombre:'Compumundo', apellido:'hypermegared', fecha_nacimiento:'1980-08-30', telefono:'2396429786', premium:true)
  puts 'El usuario administrador ya existe'
end

