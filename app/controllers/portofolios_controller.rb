class PortofoliosController < ApplicationController

  before_action :find_portofolio, only: :show

  def index
    @portofolio_items = Portofolio.all
    # return render: json: @portofolios
  end

end
