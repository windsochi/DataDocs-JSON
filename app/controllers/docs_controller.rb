class DocsController < ApplicationController

  def index
    @docs = Doc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @docs}
    end
  end

end
