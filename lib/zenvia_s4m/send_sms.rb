# coding: utf-8
module ZenviaS4m
	require 'rest-client'

	class SendSms
		def initialize(params)
			@params = params
			@res = nil
			puts @params if ZenviaS4m.config.log
			#self.check_params
      @info_SMS =  { 
       	account: ZenviaS4m.config.account, 
       	code: ZenviaS4m.config.code, 
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

		def check_params
			@params[:message] = @params[:message][0,150] unless @params[:message].nil?
			@params[:phone]	= @params[:phone]	unless @params[:phone].nil?
			@params[:sms_id] = @params[:sms_id] unless @pamars[:sms_id].nil?
		end
	end
end