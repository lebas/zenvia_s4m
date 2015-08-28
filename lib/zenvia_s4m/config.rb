# coding: utf-8
require 'singleton'

module ZenviaS4m
	class Config
		include Singleton
		attr_accessor:code, :account, :url, :log

	end
end