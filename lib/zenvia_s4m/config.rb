# coding: utf-8
require 'singleton'

module ZenviaS4m
	class Config
		include Singleton
		attr_accessor :timeout, :code, :account, :url

		def timeout 
			@timeout || 30
		end
	end
end