class Fornecedor < ActiveRecord::Base
	validates :nome, presence: true
end
