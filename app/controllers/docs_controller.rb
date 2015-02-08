class DocsController < ApplicationController
  # respond_to :json
  # before_filter :cors_preflight_check
  # after_filter :cors_set_access_control_headers
  # before_action :find_doc, only: [:destroy, :edit, :update]

  def index
    # respond_to do |format|
    #   format.json {render json:
    #     Doc.where(date_of_issue: params[:start]..params[:finish])
    #     #http://localhost:3000/docs.json?start=2002-01-01&finish=2002-12-31
    #   }
    # end
    @docs = if params[:keywords]
      Doc.where('title ilike ?',"%#{params[:keywords]}%")
    else
      []
    end
  end

  # def cors_set_access_control_headers
  #   headers['Access-Control-Allow-Origin'] = '*'
  #   headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
  #   headers['Access-Control-Max-Age'] = "1728000"
  # end

  # def cors_preflight_check
  #   if request.method == :options
  #     headers['Access-Control-Allow-Origin'] = '*'
  #     headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
  #     headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
  #     headers['Access-Control-Max-Age'] = '1728000'
  #     render :text => '', :content_type => 'text/plain'
  #   end
  # end

  # def new
  #   @doc = Doc.new
  # end

  # def create
  #   @doc = Doc.new(doc_params)
  #   if @doc.save
  #     redirect_to docs_path
  #   else
  #     redirect_to new_doc_path
  #   end
  # end

  # def show
  # end

  # def edit
  # end

  # def update
  #   @doc.update(doc_params)
  #   redirect_to docs_path
  # end

  # def destroy
  #   @doc.destroy
  #   redirect_to docs_path
  # end

  # private

  # def doc_params
  #   params.require(:doc).permit(:number, :link, :date_of_issue, :title)
  # end

  # def find_doc
  #   @doc = Doc.find(params[:id])
  # end
end

