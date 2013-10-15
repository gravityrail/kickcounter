class KickSessionsController < ApplicationController
  def index
    redirect_to new_kick_session_path
  end

  def new
    @kick_session = KickSession.new
  end

  def show
    @kick_session = KickSession.find(params[:id])
    redirect_to edit_kick_session_path(@kick_session) if @kick_session.ended_at.nil?
  end

  def edit
    @kick_session = KickSession.find(params[:id])
  end

  def create
    @kick_session = KickSession.new(params[:kick_session])
    @kick_session.started_at = Time.zone.now
    @kick_session.save!
  end

  def update
    @kick_session = KickSession.find(params[:id])
    @kick_session.kicks += 1

    if @kick_session.kicks == 10
      @kick_session.ended_at = Time.zone.now
      redirect_to :action => :show
    end

    @kick_session.save!

  end
end
