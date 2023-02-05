module Public
  module V1
    class ClientSerializer < ApplicationSerializer
      root_key :client
      root_key_for_collection :clients

      attributes :name, :email, :uuid, :trial
    end
  end
end
