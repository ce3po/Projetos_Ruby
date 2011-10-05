class Contato < ActiveRecord::Base
	validates_presence_of(:nome, :email)
end
