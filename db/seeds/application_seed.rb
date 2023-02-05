class ApplicationSeed
  DEFAULT_AMOUNT = 50

  def initialize(params = {})
    @params = params
    @progress_bar = ProgressBar.create(title: title, total: total || DEFAULT_AMOUNT, format: "%t %c/%C %E |%B|")
  end

  def call
    raise NotImplementedError
  end

  private

  attr_reader :params, :total, :progress_bar, :title
end
