class UseragentsController < ApplicationController
  def index
    @useragents = Useragent.all
    @user_agent = request.env['HTTP_USER_AGENT']

  end

  def show
    @useragent = Useragent.find(params[:id])
  end

  def new
    @useragent = Useragent.new
  end

  def create
    @useragent = Useragent.new(params[:useragent])
    if @useragent.save
      redirect_to @useragent, :notice => "Successfully created useragent."
    else
      render :action => 'new'
    end
  end

  def edit
    @useragent = Useragent.find(params[:id])
  end

  def update
    @useragent = Useragent.find(params[:id])
    if @useragent.update_attributes(params[:useragent])
      redirect_to @useragent, :notice  => "Successfully updated useragent."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @useragent = Useragent.find(params[:id])
    @useragent.destroy
    redirect_to useragents_url, :notice => "Successfully destroyed useragent."
  end
end
