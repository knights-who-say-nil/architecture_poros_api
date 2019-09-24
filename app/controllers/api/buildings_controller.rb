class Api::BuildingsController < ApplicationController
  def index
    @buildings = Building.all
    render 'index.json.jb'
  end

  def create
    @building = Building.create(
                                 name: params[:name],
                                 address: params[:address],
                                 height: params[:height],
                                 construction_date: params[:construction_date],
                                 architect: params[:architect]
                                )
    render 'show.json.jb'
  end

  def show
    @building = Building.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @building = Building.find(params[:id])
    @building.update(
                     name: params[:name],
                     address: params[:address],
                     height: params[:height],
                     construction_date: params[:construction_date],
                     architect: params[:architect]
                    )
    render 'show.json.jb'
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy
    render json: {message: "bulding destroyed"}
  end
end
