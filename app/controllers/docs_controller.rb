class DocsController < ApplicationController
  respond_to :json, :html

  def index
    @docs = Doc.all
    respond_with doc_json
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

  def doc_json
    Doc.last
  end

end

