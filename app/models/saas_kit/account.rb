module SaasKit
  class Account < ActiveRecord::Base
    belongs_to :owner, polymorphic: true
  end
end
