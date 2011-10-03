# encoding: utf-8

class Pessoa
	attr_accessor :nome, :telefone

	def initialize(nome, telefone)
		@nome=nome
		@telefone=telefone
	end

	def relatorio
		puts "Meu nome é #{@nome} e telefone é #{@telefone}"
	end
end

pessoas = []

p1 = Pessoa.new("Fulano", "231")
pessoas << p1

p2 = Pessoa.new("abc", "222")
pessoas << p2

pessoas.each do |v|
	puts v.relatorio
end
