require "vagrant"

module VagrantPlugins
	module Slack
		class Config < Vagrant.plugin("2", :config)
			attr_accessor :hook_url
			attr_accessor :username
			attr_accessor :emoticon
		end
	end
end
