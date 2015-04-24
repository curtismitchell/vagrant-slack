require_relative 'hooks/up'
require_relative 'hooks/destroy'

module VagrantPlugins
	module Slack
		class Plugin < Vagrant.plugin("2")
			name "Slack"
			description <<-DESC
				This plugin will call a specified Slack channel during vagrant up/destroy commands
			DESC

			config(:slack) do
				require_relative 'config'
				Config
			end

			command(:slack) do
				require_relative 'command'
				Command
			end

			action_hook(:slack, :machine_action_up) do |hook|
				hook.prepend(Slack::Hooks::UpHook)
			end

			# action_hook(:slack, :machine_action_halt) do |hook|
			# 	hook.append(Action::RemoveHosts)
			# end

			# action_hook(:slack, :machine_action_suspend) do |hook|
			# 	hook.append(Action::RemoveHosts)
			# end

			action_hook(:slack, :machine_action_destroy) do |hook|
				hook.prepend(Slack::Hooks::DestroyHook)
			end

			# action_hook(:slack, :machine_action_destroy) do |hook|
			# 	hook.append(Action::RemoveHosts)
			# end

			# action_hook(:slack, :machine_action_reload) do |hook|
			# 	hook.append(Action::UpdateHosts)
			# end

			# action_hook(:slack, :machine_action_resume) do |hook|
			# 	hook.append(Action::UpdateHosts)
			# end
		end
	end
end
