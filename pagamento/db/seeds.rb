# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Papel.delete_all
admin = Papel.create(nome: 'Administrador')
usuario = Papel.create(nome: 'Usuário Avançado')
Papel.create(nome: 'Visitante')

Usuario.delete_all
Usuario.create(email: 'admin@padrao.com', papel: admin,
	password: 'adminadmin', password_confirmation: 'adminadmin')
Usuario.create(email: 'usuario@padrao.com', papel: usuario,
	password: '123456', password_confirmation: '123456')
	