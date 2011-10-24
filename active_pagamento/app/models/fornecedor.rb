class Fornecedor < ActiveRecord::Base
  has_many :pagamentos
end
