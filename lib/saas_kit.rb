require 'active_record'
require 'active_record/version'
require 'active_support/core_ext/module'

require "saas_kit/engine"
require "saas_kit/acts_as_account"

module SaasKit
  extend ActiveSupport::Autoload

  autoload :ActsAsAcount
end

ActiveSupport.on_load(:active_record) do
end