require_relative 'base'

module VagrantPlugins
	module Slack
		module Hooks
			class UpHook < BaseHook
				def initialize(app, env)
          super(app, env)
					@msg = "`vagrant up #{@machine.name}`"
        end
			end
		end
	end
end
