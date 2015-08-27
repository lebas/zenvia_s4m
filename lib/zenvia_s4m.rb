require "zenvia_s4m/version"

module ZenviaS4m

  def self.config 
  	Config.instance
  end

  def self.configure(&block)
  	block.call(self.config)
  end

  autoload :Config, 'zenvia_s4m/config'
  autoload :SendSms, 'zenvia_s4m/send_sms'
  autoload :Version, 'zenvia_s4m/version' 
end
