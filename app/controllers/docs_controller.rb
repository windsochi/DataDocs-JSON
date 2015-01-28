class DocsController < ApplicationController

  def index
    respond_to do |format|
      format.html {render text: "Data"}
      format.json {render json:
        Doc.where(date_of_issue: params[:start]..params[:finish])
        #http://localhost:3000/docs.json?start=2002-01-01&finish=2002-12-31
      }
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

  def doc_json
    Doc.last
  end

end

