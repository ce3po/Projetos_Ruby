# encoding: utf-8

class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :papel

  #O usuario tem um papel (com chave estrageira)
  belongs_to :papel

  def admin?
  	papel.nome == 'Administrador'
  end

  def avancado?
  	papel.nome == 'Avançado'
  end

  def visitante?
  	papel.nome == 'Visitante'
  end
end
