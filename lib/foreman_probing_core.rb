require 'dynflow'
require 'foreman_tasks_core'

module ForemanProbingCore
  extend ForemanTasksCore::SettingsLoader

  if ForemanTasksCore.dynflow_present?
    require 'foreman_tasks_core/runner'
  end
  require 'foreman_probing_core/actions'

  require 'foreman_probing_core/neighbour_cache'
  require 'foreman_probing_core/probes'
  require 'foreman_probing_core/version'
end
