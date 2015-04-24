require "net/http"
require "uri"

module VagrantPlugins
	module Slack

		def initRequest(url)
			@uri = URI.parse(url)
			@http = Net::HTTP.new(@uri.host, @uri.port)
			@http.use_ssl = true
			@http.verify_mode = OpenSSL::SSL::VERIFY_NONE
			@request = Net::HTTP::Post.new(@uri.request_uri)
		end

		def sendMessage(msg)
			initRequest(@machine.config.slack.hook_url)
			body = '{"username":"' + @machine.config.slack.username + '", "text":"' + msg + '", "icon_emoji":"' + @machine.config.slack.emoticon + '"}'
			@ui.info "Posting to Slack"
			@request.set_form_data({"payload" => body.to_s })
			response = @http.request(@request)
		end

	end
end
