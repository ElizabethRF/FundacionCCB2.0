class UsersController < ApplicationController
   before_action :require_user, except: [:new, :create]
    before_action :set_user, only:[:edit, :update,:show, :destroy]
    before_action :require_same_user, only: [:edit, :update,:show]
    before_action :require_admin, only: [:destroy]
    
    def index 
       @users = User.paginate(page: params[:page], per_page: 15)
    end

    def new 
        @user = User.new
    end 
    
    def edit
    end 
    
    
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end 
    
   
    def update
        if @user.update(user_params)
            redirect_to projects_path
        else
            render 'edit'
        end
        
    end 
    
    def show
        @user_articles= @user.projects.paginate(page: params[:page])
    end 
    
    def destroy
        set_user 
        @user.destroy
        flash[:danger] = "Se ha borrado el usuario y todos los proyectos que esté creó"
        redirect_to users_path
    end 
    
    def set_user
         @user = User.find(params[:id])
    end
    
     def require_same_user
        if (current_user != @user) and (!@current_user.admin?)
            flash[:danger] = "Solo puedes editar tu cuenta"
            redirect_to root_path
        end 
    end 
    
    def require_admin
        if logged_in? and !current_user.admin? 
            flash[:danger]= "Solo los administradores pueden borrar "
            redirect_to root_path
         end 
    end 
    
    private 
    def user_params
        params.require(:user).permit(:name,:mail,:telephone_number,:last_name,:second_last_name,:username,:password)
    end
end