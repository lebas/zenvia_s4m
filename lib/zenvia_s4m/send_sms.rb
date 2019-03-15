# coding: utf-8
module ZenviaS4m
	require 'rest-client'

	class SendSms
		def initialize(params)
			@params = params
			@res = nil
			puts @params if ZenviaS4m.config.log
      @info_SMS =  { 
       	account: ZenviaS4m.config.account, 
       	code: ZenviaS4m.config.code, 
       	from: ZenviaS4m.config.from,
       	dispatch: 'send', 
       	to: @params[:phone], 
       	msg: @params[:message], 
       	id: @params[:sms_id], 
       	callbackOption: 1 
      }
		end

		def add_schedule(date)
			#dd/mm/aaaa hh:mm:ss
			@info_SMS[:schedule] = date unless date.nil?
		end

		def send
			puts @info_SMS if ZenviaS4m.config.log
			puts  ZenviaS4m.config.url if  ZenviaS4m.config.log
			@res = RestClient.post ZenviaS4m.config.url, @info_SMS
		end

		def return_codeSMS
			@res
		end
	end
end