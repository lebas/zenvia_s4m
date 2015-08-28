# coding: utf-8
module ZenviaS4m
	require 'rest-client'

	class SendSms
		@URL_WEBSERVICE = "http://www.zenvia360.com.br/GatewayIntegration/msgSms.do"

		def initialize(params)
			@params = params
			@res = nil
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
			@res = RestClient.post @URL_WEBSERVICE, @info_SMS
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