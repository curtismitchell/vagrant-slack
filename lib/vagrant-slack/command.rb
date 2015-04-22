
module VagrantPlugins
	module Slack
		class Command < Vagrant.plugin("2", :command)
			def execute
				@env.ui.info "THAT just happened!"
				0
			end
		end
	end
end
