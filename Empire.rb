class Empire
	Rnd_Empire_Name = ["Kilardi","Meledans","Human","Qot","Gelm","New Therman","Selva","Kaggaroth"]

	attr_accessor :name

	def initialize()
		@name = Rnd_Empire_Name.sample
	end
end