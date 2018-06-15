class PortofoliosController < ApplicationController

  before_action :find_portofolio, only: [:update]

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


  def edit
    @portofolio_item = Portofolio.find(params[:id])
  end

  def update
    respond_to do |format|
      if @portofolio.update(create_params)
        format.html { redirect_to portofolios_path, notice: 'Blog was successfully updated.' }
        # format.json { render :show, status: :ok, location: @portofolio }
      else
        format.html { render :edit }
        format.json { render json: @portofolio.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_portofolio
    @portofolio = Portofolio.find(params[:id])
  end

  def create_params
    params.require(:portofolio).permit(:title, :subtitle, :body)
  end
end
