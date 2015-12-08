def replace_spaces(string)
	string.strip!.gsub!(/ /, "%20")
end

p replace_spaces("   hi    worlds all up   in this world     ") == "hi%20%20%20%20worlds%20all%20up%20%20%20in%20this%20world"



def replace_spaces_2(string)
	while string[0] == " "
		string[0] = ""
	end
	while string[-1] == " "
		string[-1] = ""
	end
	i = 0
	while i < string.length
		if string[i] == " "
			string[i] = "%20"
			i += 3
		else
			i += 1
		end
	end 
	string
end

p replace_spaces_2("   hi    worlds all up   in this world     ") == "hi%20%20%20%20worlds%20all%20up%20%20%20in%20this%20world"