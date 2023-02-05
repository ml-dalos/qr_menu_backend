class ApplicationFinder
  def initialize(filter)
    @filter = filter
    @offset = filter[:offset]
    @limit = filter[:limit]
  end

  def call
    raise NotImplementedError
  end

  private

  attr_reader :filter, :offset, :limit

  def with_limit_and_offset(&block)
    scope = block.call
    scope = scope.limit(limit) if limit.present?
    scope = scope.offset(offset) if offset.present?
    scope
  end
end
