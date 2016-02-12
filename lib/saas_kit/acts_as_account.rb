require 'active_record'

module SaasKit
  module ActsAsAccount
    extend ActiveSupport::Concern

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def acts_as_account(options ={})

        has_one :account, {as: :owner, class_name: "SaasKit::Account"}
        include SaasKit::ActsAsAccount::LocalInstanceMethods
      end
    end

    module LocalInstanceMethods
    end
  end
end

ActiveRecord::Base.send(:include, SaasKit::ActsAsAccount)
