class ApplicationController < ActionController::Base
	def is_json_request?
    return request.headers['Content-Type'].present? && request.headers['Content-Type'].downcase == 'application/json'
  end
  def render_json(data)
    render json: { message: 'success', data: data }, status: :ok
  end
end
