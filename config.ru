#\ -b 0.0.0.0

require ::File.expand_path('../config/environment', __FILE__)
require 'action_cable/process/logging'

run Rails.application