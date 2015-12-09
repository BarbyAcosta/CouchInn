# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Cargo las categorias de TipoCouch"
Tipocouch.create(name:'Habitacion', description: "Solo se ofrece la habitacion privada")
Tipocouch.create(name:'Departamento', description: "Se ofrece departamento sin convivencia con el dueño")
Tipocouch.create(name:'Piso', description: "Se ofrece planta baja o plata alta de una casa para mayor privacidad")
Tipocouch.create(name:'Sillon', description: "Se ofrece lugar en el living de la vivienda")
Tipocouch.create(name:'Casa', description: "Se ofrece una casa sin necesidad de convivencia con el dueño")

puts "Cargo algunos usuarios"
u1=User.create(email: 'barby@live.com.ar', password: 'contraseña' , password_confirmation: 'contraseña', premium: 'false', admin: 'true')
u2=User.create(email: 'otro@live.com.ar', password: 'contraseña',  password_confirmation: 'contraseña', premium: 'false', admin: 'false')
u3=User.create(email: 'gina@live.com.ar', password: 'contraseña',  password_confirmation: 'contraseña',premium: 'false', admin: 'true')

puts "cargo categoria de reservas"
c1=Couch.create(name:'Casa',description:"Hermosa casa con ubicacion excelente",imageurl:"https://dl.dropboxusercontent.com/u/34731102/casa.jpg" ,tipocouch_id:1, capacidad:5 ,localidad: "La Plata" , user: u1 )
c2=Couch.create(name:'Sillon',description:"Confortable sillon ",imageurl:"https://dl.dropboxusercontent.com/u/34731102/sillon.jpg", tipocouch_id:2, capacidad:3 ,localidad: "Neuquen", user: u1 )
c3=Couch.create(name:'Departamento',description:"Hermoso departamento, excelente vista",imageurl:"https://dl.dropboxusercontent.com/u/34731102/Departamento%20barato.jpg", tipocouch_id:3, capacidad:1 ,localidad: "Misiones" , user: u1 )
c4=Couch.create(name:'Habitacion',description:"Espaciosa habitacion",imageurl:"https://dl.dropboxusercontent.com/u/34731102/habitacion.jpg", tipocouch_id:4 , capacidad:2 ,localidad: "La Rioja" ,user: u1 )
c5=Couch.create(name:'Piso',description:"Amplia vivienda que consta de un piso",imageurl:"https://dl.dropboxusercontent.com/u/34731102/piso.jpg", tipocouch_id:5, capacidad:3 ,localidad: "Cordoba" ,user: u3 )

puts "Cargo solicitudes de reserva"
Reserve.create(name:'Casa',fechaini:'12/12/2016',fechafin:'20/12/2016', confirmada: 'false',couch: c1 , user: u1 )
Reserve.create(name:'Sillon',fechaini:'1/12/2016',fechafin:'5/12/2016',  confirmada: 'false',couch: c2 , user: u2)
Reserve.create(name:'Departamento',fechaini:'7/2/2016',fechafin:'9/2/2016' , confirmada: 'false',couch: c3 , user: u2)

