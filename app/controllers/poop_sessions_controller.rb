class PoopSessionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    redirect_to new_poop_session_path
  end

  def new
    @poop_session = PoopSession.new(:user => current_user)
  end

  def show
    @poop_session = PoopSession.find(params[:id])
    redirect_to edit_poop_session_path(@poop_session) if @poop_session.ended_at.nil?
  end

  def edit
    @poop_session = PoopSession.find(params[:id])
  end

  def create
    @poop_session = PoopSession.new(params[:poop_session])
    if @poop_session.save
      redirect_to poop_sessions_path(@poop_session)
    else
      flash[:error] = "There was a problem updating the poop session"
      render :edit
    end
  end

  def update
    @poop_session = PoopSession.find(params[:id])
    if @poop_session.update_attributes(params[:poop_session])
      redirect_to poop_sessions_path
    else
      flash[:error] = "There was a problem updating the poop session"
      render :edit
    end
  end
end
