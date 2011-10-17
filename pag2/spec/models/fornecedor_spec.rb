# encoding: utf-8
require 'spec_helper'

describe Fornecedor do
	it "válido com nome" do
		Fornecedor.new(nome: 'Apple').should be_valid
	end

	it "não é valido sem nome" do
		Fornecedor.new.should be_invalid
	end
end