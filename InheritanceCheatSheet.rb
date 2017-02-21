class Probe
	def deploy(deploy_time, prep_time)
		"deploying now"
	end
	def take_sample
		"Probing like a boss"
	end
end

class MineralProbe < Probe
	def deploy(deploy_time)
		puts "Preparing..."
		super(deploy_time, Time.now + 2)
	end
	def take_sample
		"Getting minerals"
	end
end

class AtmosphericProbe < Probe
	def take_sample
		"Getting gases"
	end
end

basic_probe = Probe.new
mineral_probe = MineralProbe.new
atmo_probe = AtmosphericProbe.new

puts "Basic probe is... " + basic_probe.take_sample()
puts "Mineral probe is... " + mineral_probe.take_sample()
puts "Atmosphere probe is... " + atmo_probe.take_sample()
puts "mineral_probe.deploy : " + mineral_probe.deploy(1)
puts "atmo_probe.deploy : " + atmo_probe.deploy(2, 3)
