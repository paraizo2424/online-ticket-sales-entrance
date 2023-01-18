class StaffPagesController < ApplicationController
  def signin
  end

  def index
  end

  def qrcode_reader
  end

  def buy_detail
    @sale = Sale.find_by(url: params[:url])
  end
end
