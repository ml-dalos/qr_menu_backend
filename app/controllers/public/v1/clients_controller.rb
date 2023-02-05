module Public
  module V1
    class ClientsController < ApplicationController
      def index
        validation = Clients::IndexContract.new.call(filter_params)
        if validation.failure?
          render_bad_request(validation.errors)
        else
          clients = ClientsFinder.new(filter_params).call
          render json: ClientSerializer.new(clients).call
        end
      end
    end
  end
end
