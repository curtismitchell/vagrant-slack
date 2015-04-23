require_relative 'SlackHook'

module VagrantPlugins
	module Slack	
		class TestHook
			include Slack

	        def initialize(app, env)
	          @app = app
	          @machine = env[:machine]
	          @ui = env[:ui]
	        end

	        def call(env)
	          sendMessage("This came from a new Vagrant Plugin!")
	          @app.call(env)
	        end
      	end
    end
end
