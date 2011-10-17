# encoding: utf-8
require 'spec_helper'

describe Fornecedor do
	it "válido com nome" do
		Fornecedor.new(nome: 'Apple').should be_valid
	end

	it "não é valido sem nome" do
		Fornecedor.new.should be_invalid
	end

	it "valida CPF" do
		Fornecedor.new(nome: 'Fulano', cpf: '81251172296').should be_valid
		Fornecedor.new(nome: 'Fulano', cpf: '1').should be_invalid
	end

	it "valida CNPJ" do
		Fornecedor.new(nome: 'Fulano', cnpj: '00000000000191').should be_valid
		Fornecedor.new(nome: 'Fulano', cnpj: '1').should be_invalid
	end
end