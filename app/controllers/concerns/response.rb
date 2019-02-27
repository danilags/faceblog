module Response
  def render_response(object, status = :ok)
    render json: {data: object, status: 200, message: 'Success' }, status: status 
  end
end