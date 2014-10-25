class ApiController < ApplicationController
 respond_to :html, :xml, :json
	def index
    @projects = Project.all
    render :json=> @projects
  end

  def show
  	@project = Project.find(params[:project_id])
    render :json=> @project
  end

  def card
  	@project = Project.find(params[:project_id])
  	@card = @project.cards.find(params[:card_id]) 
  	render :json=> @card
  end

end
