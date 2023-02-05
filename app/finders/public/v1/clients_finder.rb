module Public
  module V1
    class ClientsFinder < ApplicationFinder
      def call
        with_limit_and_offset { Client.active.order(:name) }
      end
    end
  end
end
