def ftoc(fahr)
	fahr.to_f
	 celsius = (5.0/9.0)*(fahr - 32)
end

def ctof(celsius)
	celsius.to_f
	fahr = celsius*(9.0/5.0) + 32

end


