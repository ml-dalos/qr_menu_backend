class ApplicationContract < Dry::Validation::Contract
  MAX_LIMIT = 100

  config.messages.top_namespace = :contracts
  config.messages.backend = :i18n
end
