# -*- coding: utf-8 -*-
$KCODE='u'
class MapsController < ApplicationController

  def show
    @maps=Map.find(:all)
    
    render :json => {data:@maps}
  end
  
  def index
    @maps = Map.find_by_id(params[:id])

    render :json => {data:@maps}
  end
  
  def update
    new_attributes = request.request_parameters.dup.reject do |k, v|
      ![ :name, :longitude, :latitude].include?(k.to_sym)
    end
     @maps = Map.find_by_id(params[:id])
   @maps.update_attributes!(new_attributes)
  end
  
  def delete
    @entry = Map.find_by_id(params[:id]) 
    @entry.destroy
  end
  
  def create
  puts ">>>>>>>"
  puts request.request_parameters
    new_attributes = request.request_parameters.dup.reject do |k, v|
      ![ :name, :longitude, :latitude].include?(k.to_sym)
    end

    @maps = Map.new(new_attributes, without_protection: true)
    @maps.save!
    return :json => {data:@maps}
  end
end

