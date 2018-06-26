class PortofoliosController < ApplicationController

  before_action :find_portofolio, only: [:update, :edit, :show, :destroy]

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
    3.times { @portofolio_item.technologies.build }

  end

  def destroy

    @portofolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portofolios_url, notice: 'Portofolio was successfully destroyed.' }
    end
  end

  def edit
    # @portofolio_item = Portofolio.find(params[:id])
  end

  def show
    # @portofolio_item = Portofolio.find(params[:id])
  end

  def update
    respond_to do |format|
      if @portofolio_item.update(create_params)
        format.html { redirect_to portofolios_path, notice: 'Blog was successfully updated.' }
        # format.json { render :show, status: :ok, location: @portofolio }
      else
        format.html { render :edit }
        format.json { render json: @portofolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_portofolio
    @portofolio_item = Portofolio.find(params[:id])
  end

  def create_params
    params.require(:portofolio).permit(:title, :subtitle, :body,
       technologies_attributes: [:name])
  end
end
