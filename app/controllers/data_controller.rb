class DataController < ApplicationController
  def index
    @data_items = DataItem.all
    render template: "data_items/index"
  end 
  def show 
    @data_item = DataItem.find_by(id: params[:id])
    render template: "data_items/show"
  end
end
