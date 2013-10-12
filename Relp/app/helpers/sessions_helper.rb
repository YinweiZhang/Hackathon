module SessionsHelper

	def current_user
		User.find_by_username(session[:user])
	end

end
