class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]
  before_filter :load_project
  respond_to :html, :xml, :json

  def index
    @cards = @project.cards.all
    respond_with(@cards)
  end

  def show
    @card = @project.cards.find(params[:id])
    respond_with(@card)
  end



  def new
    @card = @project.cards.new
    respond_with(@card)
  end

  def edit
  end

  def create

    @card = @project.cards.new(card_params)
    respond_to do |format|
      if @card.save
        format.html { redirect_to project_path(@project) }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @project.cards.update(card_params)
    respond_with(@card)
  end

  def destroy
    @card.destroy
    respond_with(@card)
  end

  private
    def set_card
      @card = Card.find(params[:id])
    end
    def load_project
       @project = Project.find(params[:project_id])

    end
    def card_params
      params.require(:card).permit(:name, :body, :project_id)
    end
end
