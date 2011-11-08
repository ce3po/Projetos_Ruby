# encoding: utf-8
require 'spec_helper'

describe Fornecedor do
	it "válido com nome" do
		Fornecedor.new(nome: 'Apple').should be_invalid
	end

	it "não é valido sem nome" do
		Fornecedor.new.should be_invalid
	end

	it "valida CPF" do
		Fornecedor.new(nome: 'Fulano', cpf: '81251172296').should be_valid
		Fornecedor.new(nome: 'Fulano', cpf: '1').should be_invalid
	end

	it "valida CNPJ" do
		Fornecedor.new(nome: 'BB', pj: true, cnpj: '00000000000191').should be_valid
		Fornecedor.new(nome: 'Fulano', cnpj: '1').should be_invalid
	end

	it "não aceita CPF e CNPJ juntos" do
		Fornecedor.new(nome: 'Fulano', cpf: '81251172296', cnpj: '00000000000191').should be_invalid
	end

	it "não aceita CPF e CNPJ vazios" do
		Fornecedor.new(nome: 'Fulano').should be_invalid
	end

	it "verifica cnpj se é pj" do
		Fornecedor.new(nome: 'ACME', pj: true, cnpj: '00000000000191').should be_valid
		Fornecedor.new(nome: 'ACME', pj: true, cpf: '81251172296').should be_invalid
	end

	it "verifica CPF quando for Pessoa física" do
		Fornecedor.new(nome: 'Banco', pj: false, cpf: '81251172296').should be_valid
		Fornecedor.new(nome: 'Brasil', pj: false, cnpj: '00000000000191').should be_invalid
	end
end