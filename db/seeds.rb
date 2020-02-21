# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pethistory.destroy_all
Pet.destroy_all
Client.destroy_all


client = Client.create(name: 'Vero', phone: '123456789', email: 'vero@vero.cl')
pet1 = Pet.create(name: 'Dorito', race: 'Quiltro', birthday: '01/01/2019')
pet2 = Pet.create(name: 'Mocca', race: 'Quiltro', birthday: '12/12/2019')
ph1 = Pethistory.create(weight: 100, height: 200, description: 'Vacunado')
ph2 = Pethistory.create(weight: 120, height: 240, description: 'Vacunado')
ph3 = Pethistory.create(weight: 30, height: 20, description: 'Vacunado')
client.pets << pet1
client.pets << pet2
pet1.pethistories << ph1
pet1.pethistories << ph2
pet2.pethistories << ph3