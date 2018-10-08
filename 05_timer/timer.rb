#write your code here
def time_string(seconde)
	seconde = Time.at(seconde).utc.strftime("%H:%M:%S")
end
