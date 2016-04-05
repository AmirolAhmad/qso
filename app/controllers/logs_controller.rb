class LogsController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_filter :set_user, only: [:new, :create]
  before_filter :set_log, only: [:show, :edit, :update, :destroy]

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

  def show
    if @log
      render
    else
      redirect_to logs_path, notice: "Oppss! Log not found!"
    end
  end

  def edit
    if @log
      render
    else
      redirect_to logs_path, notice: "Oppss! Log not found"
    end
  end

  def update
    if @log.update(log_params)
      redirect_to logs_path, notice: "U-la-la! Your log has been update"
    else
      render 'edit'
    end
  end

  def destroy
    if @log.destroy
      redirect_to logs_path, notice: 'Shoot! Log was destroyed!'
    else
      render 'index'
    end
  end

  private

  def set_user
  	@user = current_user
  end

  def set_log
    @log = Log.find(params[:id])
  end
end
