class ListadorDeDiretorios
	def initialize
		puts Dir.glob("/etc/a*")
	end
end

ListadorDeDiretorios.new