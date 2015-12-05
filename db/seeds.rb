# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Cargo algunos usuarios"
if User.where(email: 'barby@live.com.ar').empty?
	u1=User.create(email: 'barby@live.com.ar', name: 'Barbara', lastname: 'Acosta', dni: '37363795', provincia: 'Buenos Aires', localidad: 'La Plata', password: 'contraseña' , password_confirmation: 'contraseña', premium: 'false', admin: 'true')
end
if User.where(email: 'otro@live.com.ar').empty?
	u2=User.create(email: 'otro@live.com.ar', name: 'Otra', lastname: 'Persona', dni: '1236541', provincia: 'Buenos Aires', localidad: 'La Plata', password: 'contraseña',  password_confirmation: 'contraseña', premium: 'false', admin: 'false')
end
if User.where(email: 'gina@live.com.ar').empty?
	u3=User.create(email: 'gina@live.com.ar', name: 'Gina', lastname: 'Galvez Huerta', dni: '3456987', provincia: 'Buenos Aires', localidad: 'La Plata',password: 'contraseña',  password_confirmation: 'contraseña',premium: 'false', admin: 'true')
end

puts "Cargo las categorias de TipoCouch"
Tipocouch.where(name:'Habitacion', description: "Solo se ofrece la habitacion privada").first_or_create
Tipocouch.where(name:'Departamento', description: "Se ofrece departamento sin convivencia con el dueño").first_or_create
Tipocouch.where(name:'Piso', description: "Se ofrece planta baja o plata alta de una casa para mayor privacidad").first_or_create
Tipocouch.where(name:'Sillon', description: "Se ofrece lugar en el living de la vivienda").first_or_create
Tipocouch.where(name:'Casa', description: "Se ofrece una casa sin necesidad de convivencia con el dueño").first_or_create

puts "cargo categoria de reservas"
Couch.where(name:'Casa',description:"Hermosa casa con ubicacion excelente",imageurl:"https://dl.dropboxusercontent.com/u/34731102/casa.jpg" ,tipocouch_id: "1", capacidad: "5 ",localidad: "La Plata" , user: u1 ).first_or_create
Couch.where(name:'Sillon',description:"Confortable sillon ",imageurl:"https://dl.dropboxusercontent.com/u/34731102/sillon.jpg", tipocouch_id:"2", capacidad:"3" ,localidad: "Neuquen", user: u1 ).first_or_create
Couch.where(name:'Departamento',description:"Hermoso departamento, excelente vista",imageurl:"https://dl.dropboxusercontent.com/u/34731102/Departamento%20barato.jpg", tipocouch_id:"3", capacidad:"1" ,localidad: "Misiones" , user: u1 ).first_or_create
Couch.where(name:'Habitacion',description:"Espaciosa habitacion",imageurl:"https://dl.dropboxusercontent.com/u/34731102/habitacion.jpg", tipocouch_id:"4" , capacidad:"2" ,localidad: "La Rioja" ,user: u1 ).first_or_create
Couch.where(name:'Piso',description:"Amplia vivienda que consta de un piso",imageurl:"https://dl.dropboxusercontent.com/u/34731102/piso.jpg", tipocouch_id:"5", capacidad:"3" ,localidad: "Cordoba" ,user: u3 ).first_or_create

puts "Cargo solicitudes de reserva"
Reserve.where(name:'Casa',fechaini:'12/12/2016',fechafin:'20/12/2016').first_or_create
Reserve.where(name:'Sillon',fechaini:'1/12/2016',fechafin:'5/12/2016').first_or_create
Reserve.where(name:'Departamento',fechaini:'7/2/2016',fechafin:'9/2/2016').first_or_create

