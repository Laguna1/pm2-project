# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Role.create({ name: 'Regular', description: 'Can create rekords' })
r2 = Role.create({ name: 'Doctor', description: 'Can read and update rekords' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = User.create({ name: 'Sally-regular', email: 'sally@example.com', password: '11111111', password_confirmation: '11111111', role_id: r1.id })
u2 = User.create({ name: 'Sue-doctor', email: 'sue@example.com', password: '11111111', password_confirmation: '11111111', role_id: r2.id })
u3 = User.create({ name: 'Kev-doctor', email: 'kev@example.com', password: '11111111', password_confirmation: '11111111', role_id: r2.id })
u4 = User.create({ name: 'Jack-admin', email: 'jack@example.com', password: '11111111', password_confirmation: '11111111', role_id: r3.id })