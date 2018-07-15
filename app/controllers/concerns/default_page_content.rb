module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_content
  end

  def set_content
    @page_title = 'Dev Blog | devblog.com'
  end
end
