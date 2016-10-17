class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    request_params = params.require(:request).permit([:name, :email, :department, :message, :actions])
    @request = Request.new request_params
    if @request.save
      redirect_to request_path(@request)
    else
      render :new_request
    end
  end

  def show
    @request = Request.find params[:id]
  end

  def index
    @requests = Request.all
    if params[:search]
      @requests = Request.search(params[:search]).paginate(:page => params[:page], :per_page => 7).order(actions: :desc)
    else
      @requests = Request.paginate(:page => params[:page], :per_page => 7).order(actions: :desc)
    end
  end

  def edit
    @request = Request.find params[:id]
  end

  def update
    @request = Request.find params[:id]
    request_params = params.require(:request).permit(:name, :email, :department, :message, :actions)
    if @request.update request_params
      redirect_to request_path(@request)
    else
      render :edit
    end
  end

  def destroy
    @request = Request.find params[:id]
    @request.destroy
    redirect_to requests_path
  end

end
