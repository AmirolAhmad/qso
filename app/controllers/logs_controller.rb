class LogsController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_filter :set_user, only: [:new, :create]

  def index
    @logs = Log.all
  end

  def new
  	@log ||= Log.new
  	render
  end

  def create
    @log = @user.logs.new(log_params)
    if @log.save
      redirect_to logs_path, notice: "Well done brah! Your log has been publish"
    else
      render 'new'
    end
  end

  private

  def set_user
  	@user = current_user
  end
end
