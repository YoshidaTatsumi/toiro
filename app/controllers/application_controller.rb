class ApplicationController < ActionController::Base

	# devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合、その前にconfigure_permitted_parametersが実行される。
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
		binding.pry
		root_path
	end

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end

end
