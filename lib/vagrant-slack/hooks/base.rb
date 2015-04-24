require_relative '../SlackHook'

module VagrantPlugins
	module Slack
		module Hooks
			class BaseHook
				include Slack

        def initialize(app, env)
          @app = app
          @machine = env[:machine]
          @ui = env[:ui]
        end

        def call(env)
          sendMessage(@msg) if @msg != ""
          # @app.call(env)
        end
    	end
  	end
  end
end
