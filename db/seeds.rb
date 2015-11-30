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

puts "cargo categoria de reservas"
Reserve.create(name:'Casa',description:"Hermosa casa con ubicacion excelente, capacidad para 5 personas",imageurl:"https://dl.dropboxusercontent.com/u/34731102/casa.jpg")
Reserve.create(name:'Sillon',description:"Confortable sillon para una persona",imageurl:"https://dl.dropboxusercontent.com/u/34731102/sillon.jpg")
Reserve.create(name:'Departamento',description:"Hermoso departamento, excelente vista, para 3 personas",imageurl:"https://dl.dropboxusercontent.com/u/34731102/Departamento%20barato.jpg")
Reserve.create(name:'Habitacion',description:"Espaciosa habitacion para 2 personas",imageurl:"https://dl.dropboxusercontent.com/u/34731102/habitacion.jpg")
Reserve.create(name:'Piso',description:"Amplia vivienda que consta de un piso capacidad 5 personas",imageurl:"https://dl.dropboxusercontent.com/u/34731102/piso.jpg")

puts "Cargo solicitudes de reserva"
Couch.create(name:'Casa',fechaini:'12/12/2016',fechafin:'20/12/2016')
Couch.create(name:'Sillon',fechaini:'1/12/2016',fechafin:'5/12/2016')
Couch.create(name:'Departamento',fechaini:'7/2/2016',fechafin:'9/2/2016')