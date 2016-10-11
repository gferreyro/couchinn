AccommodationType.find_or_create_by(descripcion:'Casa')
u = User.find_by(email:'admin@admin.com')
if u.nil?
  User.create(email:'admin@admin.com', password:'123456', password_confirmation:'123456', nombre:'Compumundo', apellido:'hypermegared', fecha_nacimiento:'1980-08-30', telefono:'2396429786', premium:true)
  puts 'Usuario administrador agregado'
else
  if !(u.nombre == 'Compumundo')
    u.update(nombre:'Compumundo', apellido:'hypermegared', fecha_nacimiento:'1980-08-30', telefono:'2396429786', premium:true)
    puts 'El usuario administrador fue actualizado'
  else
    puts 'El usuario administrador ya está actualizado'
  end
end
if Image.all.count < 1
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Pickle_Barrel_House_2008.jpg/320px-Pickle_Barrel_House_2008.jpg', descripcion:'Casa Barril')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/0/06/The_Round_House%2C_Finchingfield%2C_Essex_-_geograph.org.uk_-_236275.jpg', descripcion:'Casa hexagonal')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/A_la_Ronde_%285523982028%29.jpg/320px-A_la_Ronde_%285523982028%29.jpg', descripcion:'Casa redonda')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/4/4f/Macon_Ocmulgee_Earth_Lodge.jpg', descripcion:'Trinchera')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/7/7e/Ideal_Home_Solar_House%2C_Homeworld_1981_Exhibition%2C1981.jpg', descripcion:'Casa solar')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Maynard_and_Katharine_Buehler_House_%28Orinda%2C_CA%29.JPG/640px-Maynard_and_Katharine_Buehler_House_%28Orinda%2C_CA%29.JPG', descripcion:'Quinta')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Wuppertal_Arrenberger_Stra%C3%9Fe_2016_150.jpg/320px-Wuppertal_Arrenberger_Stra%C3%9Fe_2016_150.jpg', descripcion:'Casona')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Fred_and_Lucia_Farnham_House_Side_View.jpg/320px-Fred_and_Lucia_Farnham_House_Side_View.jpg', descripcion:'Casa de campo')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Lolas_Apartment.jpg/360px-Lolas_Apartment.jpg', descripcion:'Departamento plaza')
  Image.create(url:'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Ittina_Abha_Apartment_front_view.jpg/320px-Ittina_Abha_Apartment_front_view.jpg', descripcion:'Departamento urbano')
  puts 'Se importaron nuevas imagenes'
else
  puts 'Ya hay imagenes disponibles'
end

