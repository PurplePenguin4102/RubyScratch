res = `aplay --version`

player = 0
if /^aplay: version.+/.match(res)
	play_thr = Thread.new do
		loop do
			player = spawn "aplay bird_chirp.wav -q"
			Process.wait player
		end
	end
else
	puts "regex fucked up"
end


i = 0
loop do 
	puts i
	i = i + 1
	sleep(0.5)
	if i == 10
		play_thr.kill
		Process.kill("HUP", player)
	end
end
