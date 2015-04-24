require_relative 'base'

module VagrantPlugins
	module Slack
		module Hooks
			class DestroyHook < BaseHook
				def initialize(app, env)
          super(app, env)
					@msg = "`vagrant destroy #{@machine.name}`"
        end
			end
		end
	end
end
