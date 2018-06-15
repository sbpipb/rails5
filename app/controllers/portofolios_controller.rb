class PortofoliosController < ApplicationController

  before_action :find_portofolio, only: :show

  def index
    @portofolio_items = Portofolio.all
    # return render: json: @portofolios
  end

  def create
    @portofolio_item = Portofolio.new create_params

    respond_to do |format|
      if @portofolio_item.save
        format.html { redirect_to portofolios_path, notice: 'Your portofolio item is now live' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @portofolio_item = Portofolio.new
  end

  def create_params
    params.require(:portofolio).permit(:title, :subtitle, :body)
  end
end
