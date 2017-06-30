class PortfoliosController < ApplicationController
<<<<<<< HEAD
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portfolio'
   access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all


=======
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all
  
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

<<<<<<< HEAD
    head 200, content_type: "text/html"
=======
    render nothing: true
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
<<<<<<< HEAD
    3.times { @portfolio_item.technologies.build }
=======
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
<<<<<<< HEAD
        format.html { redirect_to portfolios_path, notice: "Your portfolio item is now live." }
=======
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
      else
        format.html { render :new }
      end
    end
  end

<<<<<<< HEAD
  def edit    
    3.times { @portfolio_item.technologies.build }
=======
  def edit
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
<<<<<<< HEAD
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }        
      else
        format.html { render :edit }        
=======
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
      end
    end
  end

<<<<<<< HEAD
  def show      
  end

  def destroy
    #perform the lookup    
    #destroy the record
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was successfully removed.' }      
=======
  def show
  end

  def destroy
    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
    end
  end

  private
<<<<<<< HEAD
  #Methods created here can be used only in this class
  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body,
                                      technologies_attributes: [:name]
                                      )
=======

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      :main_image,
                                      :thumb_image,
                                      technologies_attributes: [:id, :name, :_destroy]
                                     )
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end
end
