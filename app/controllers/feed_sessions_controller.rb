class FeedSessionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    redirect_to new_feed_session_path
  end

  def new
    @feed_session = FeedSession.new(:user => current_user)
  end

  def show
    @feed_session = FeedSession.find(params[:id])
    redirect_to edit_feed_session_path(@feed_session) if @feed_session.ended_at.nil?
  end

  def edit
    @feed_session = FeedSession.find(params[:id])
  end

  def create
    @feed_session = FeedSession.new(params[:feed_session])
    @feed_session.started_at = Time.zone.now
    if @feed_session.save
      redirect_to edit_feed_session_path(@feed_session)
    else
      flash[:error] = "There was a problem updating the feed session"
      render :edit
    end
  end

  def update
    @feed_session = FeedSession.find(params[:id])
    @feed_session.ended_at = Time.zone.now
    if @feed_session.update_attributes(params[:feed_session])
      redirect_to feed_sessions_path
    else
      flash[:error] = "There was a problem updating the feed session"
      render :edit
    end
  end
end
