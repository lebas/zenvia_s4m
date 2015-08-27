# coding: utf-8
require 'singleton'

module ZenviaS4m
	class Config
		include Singleton
		@@timeout = @@code = @@account = nil

		def timeout 
			@@timeout || 30
		end
	end
end