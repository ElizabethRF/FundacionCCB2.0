class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
   helper_method :current_user, :logged_in?, :current_project
    @@current_project = 1
    
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end 
    
    def logged_in?
        !!current_user
    end
    
    def require_user
        if !logged_in?
            flash[:danger] = "Debes iniciar sesión para ejecutar esa acción"
            redirect_to root_path
        end
    end 
    
    def current_project
        @@current_project = request.original_url.split('.').last
    end 
    
    def set_current_project(project_id)
        @@current_project = project_id
    end 
    
    def get_current_project
        @@current_project ||= 3
    end 
    
end
