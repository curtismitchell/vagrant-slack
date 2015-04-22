module VagrantPlugins
	module Slack	
		class TestHook
	        def initialize(app, env)
	          @app = app
	          @machine = env[:machine]
	          @ui = env[:ui]
	        end

	        def call(env)
	          @ui.info @machine.config.slack.hook_url
	          @app.call(env)
	        end
      	end
    end
end
