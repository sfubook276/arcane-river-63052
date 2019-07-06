class TermsController < ApplicationController
  def index
    @terms = Term.all
  end

  def show
    @term = Term.find(params[:id])
  end

  def new
  end

  def create
    @term = Term.new(term_params)

    @term.save
    redirect_to @term
  end

  private
  def term_params
    params.require(:term).permit(:year, :semester)
  end
end
