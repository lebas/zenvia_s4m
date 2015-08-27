# coding: utf-8
module ZenviaS4m
	
	class Config
		@timeout = @code = @account = nil

		def timeout 
			@timeout || 30
		end
	
	end
end