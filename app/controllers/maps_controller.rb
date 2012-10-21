class MapsController < ApplicationController

  def show
    @maps=Map.find(:all)
    
    render :json => {data:@maps}
  end
  
  def index
    @maps = Map.find_by_id(params[:id])

    render :json => {data:@maps}
  end
  
  def delete
    @entry = Map.find_by_id(params[:id]) 
    @entry.destroy
  end
  
  def create
    @maps = Map.create(request.request_parameters)

    render :json => @maps.to_json
  end
end

