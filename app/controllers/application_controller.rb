class ApplicationController < ActionController::API
    include JsonWebToken
    before_action :authenticate_request

    private
    def authenticate_request
        header = request.headers["Authorization"]
        header = header.split(' ').last if header
        decoded = jwt_decode(header)
        @current_user = User.find(decoded[:user_id])
    rescue JWT::DecodeError => e
        render json: {error: "Token not valid"}, status: :unauthorized
    end
end
