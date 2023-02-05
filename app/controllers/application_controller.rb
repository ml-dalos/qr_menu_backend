class ApplicationController < ActionController::API
  private

  def render_bad_request(errors = {})
    render json: {
      status: :bad_request, errors: errors.to_h
    }, status: :bad_request
  end

  def filter_params
    params.permit(:limit, :offset).to_h
  end
end
