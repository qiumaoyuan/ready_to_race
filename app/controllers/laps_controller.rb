class LapsController < ApplicationController
  def index
    @racing_session = RacingSession.find params[:racing_session_id]
    @laps = @racing_session.laps.order(:created_at)
  end
end
