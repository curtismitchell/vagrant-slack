require "vagrant-slack/version"
require "vagrant-slack/plugin"

module VagrantPlugins
	module Slack
		def self.source_root
	      @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
	    end
	end
end
