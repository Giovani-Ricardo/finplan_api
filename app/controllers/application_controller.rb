class ApplicationController < ActionController::API
	include DeviseTokenAuth::Concerns::SetUserByToken

	before_action :configure_permited_parameters, if: :devise_controller?

	protected

	def configure_permited_parameters
		devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :ativo])
	end
end
