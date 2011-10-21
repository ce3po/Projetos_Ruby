# encoding: utf-8

require "brcpfcnpj"

class Fornecedor < ActiveRecord::Base
    has_many :conformidades
    
	validates :nome, presence: true
	validates :cnpj, presence: true, if: :pj?
	validates :cpf,  presence: true, unless: :pj?
	validate :cpf_ou_cnpj
	validate :cpfcnpj_vazio
	usar_como_cpf :cpf
	usar_como_cnpj :cnpj

  private
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
