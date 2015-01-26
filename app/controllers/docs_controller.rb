class DocsController < ApplicationController

  def index
    @docs = Doc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @docs}
    end
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(doc_params)
    if @doc.save
      redirect_to docs_path
    else
      redirect_to new_doc_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def doc_params
    params.require(:doc).permit(:number, :link, :date_of_issue, :title, :description)
  end

end

