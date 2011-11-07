class Ability
  include CanCan::Ability

  def initialize(usuario)
    usuario ||= Usuario.new(papel: Papel.find_by_nome('Visitante'))

    if usuario.admin?
       can :manage, :all
    elsif usuario.avancado?
       can [:read, :create], [Conformidade, Fornecedor]
    else
       can :read, [Conformidade, Fornecedor], {publicado: true}
    end
  end
end
