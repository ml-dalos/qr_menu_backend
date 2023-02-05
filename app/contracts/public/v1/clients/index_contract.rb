module Public
  module V1
    module Clients
      class IndexContract < ApplicationContract
        params do
          required(:limit).filled(:integer)
          required(:offset).filled(:integer)
        end

        rule(:limit) do
          key.failure(:too_big) if value > MAX_LIMIT
          key.failure(:negative) if value < 0
        end

        rule(:offset) do
          key.failure(:negative) if value < 0
        end
      end
    end
  end
end
