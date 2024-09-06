class DataController < ApplicationController
  def index 
    data = Data_item.all
  end
  def create
    data = params[:data]
    Rails.logger.info "Recieved data: #{data.inspect}"
    render json: { status: 'Data recieved', data: data}, status: :ok
  end 
end
