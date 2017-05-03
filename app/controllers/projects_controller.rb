class ProjectsController < ApplicationController
   before_action :set_project, only: [:edit,:update,:show,:destroy]
    before_action :require_user
    before_action :require_same_user, only: [:edit, :show, :update, :destroy]
    before_action :require_admin, only: [:edit,:update,:destroy]
    
    def index 
        @projects = Project.paginate(page: params[:page], per_page: 15)
    end 
    
    def edit
    end 
    
    def show 
    end 
    
    def new
        @project = Project.new
    end 
    
    def create
        @project = Project.new(project_params)
        @project.user = current_user
        if  @project.save
            redirect_to @project
        else 
            render 'new'
        end
    end 
    
    def update 
        if @project.update(project_params)
            redirect_to @project
        else 
            render 'edit'
        end
    end 
    
    def destroy 
        @project.destroy
        
        redirect_to projects_path
    end 
    
    def require_same_user 
        set_project
        if current_user != @project.user && !@current_user.admin?
            flash[:danger] = "Solo puedes editar tus artículos"
            redirect_to root_path
        end 
    end 
    
    def set_project
        @project = Project.find(params[:id])
    end 
    
    
    def require_admin
        if logged_in? and !current_user.admin? 
            flash[:danger]= "Solo los administradores pueden hacer eso "
            redirect_to root_path
         end 
    end 
    
    private 
    def project_params
        params.require(:project).permit(:area, :amount, :starting,  :ending, :description , :location, :volunteers, :problem ,:serves_num_people, :title)
    end
    
end