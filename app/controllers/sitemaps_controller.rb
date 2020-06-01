class SitemapsController < ApplicationController
  # render formats: :xml

  def index
    respond_to do |format|
      format.html
      format.xml
    end
    @host = "#{request.protocol}#{request.host}"
  end
end
