# encoding: utf-8

require "brcpfcnpj"

class Fornecedor < ActiveRecord::Base
	validates :nome, presence: true
	validate :cpf_ou_cnpj
	validate :cpfcnpj_vazio
	usar_como_cpf :cpf
	usar_como_cnpj :cnpj

	def cpf_ou_cnpj
		if cpf.present? and cnpj.present?
#			errors[:base] << :erro_cpfComCNPJ
			errors.add(:cpf, :erro_cpfComCNPJ)
			errors.add(:cnpj, :erro_cnpjComCPF)
		end
	end

	def cpfcnpj_vazio
		if cpf.blank? and cnpj.blank?
			errors[:base] << :erro_cpfcnpj_nao_branco
#			errors.add(:cpf, "CPF e CNPJ não podem ser em branco.")
		end
	end
end
