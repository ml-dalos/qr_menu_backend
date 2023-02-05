class ApplicationSerializer
  include Alba::Resource

  transform_keys :lower_camel

  alias_method :call, :serialize
end
