class PageController < ApplicationController
  def home
  end

  def create
    @creatives = Creative.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @creatives }
    end
  end

  def work
    @portfolios = Portfolio.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portfolios }
    end
  end

  def speaking
    @talks = Talk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @talks }
    end
  end

  def press
    @presses = Press.all.reverse

    respond_to do |format|
      format.html
      format.json { render json: @presses }
    end
  end

  def contact

  end
end
