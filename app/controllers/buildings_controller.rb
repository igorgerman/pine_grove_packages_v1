class BuildingsController < ApplicationController
  def index
    @q = Building.ransack(params[:q])
    @buildings = @q.result(:distinct => true).includes(:apartments).page(params[:page]).per(10)

    render("buildings/index.html.erb")
  end

  def show
    @apartment = Apartment.new
    @building = Building.find(params[:id])

    render("buildings/show.html.erb")
  end

  def new
    @building = Building.new

    render("buildings/new.html.erb")
  end

  def create
    @building = Building.new

    @building.street_address = params[:street_address]
    @building.city = params[:city]
    @building.state = params[:state]
    @building.zip_code = params[:zip_code]

    save_status = @building.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/buildings/new", "/create_building"
        redirect_to("/buildings")
      else
        redirect_back(:fallback_location => "/", :notice => "Building created successfully.")
      end
    else
      render("buildings/new.html.erb")
    end
  end

  def edit
    @building = Building.find(params[:id])

    render("buildings/edit.html.erb")
  end

  def update
    @building = Building.find(params[:id])

    @building.street_address = params[:street_address]
    @building.city = params[:city]
    @building.state = params[:state]
    @building.zip_code = params[:zip_code]

    save_status = @building.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/buildings/#{@building.id}/edit", "/update_building"
        redirect_to("/buildings/#{@building.id}", :notice => "Building updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Building updated successfully.")
      end
    else
      render("buildings/edit.html.erb")
    end
  end

  def destroy
    @building = Building.find(params[:id])

    @building.destroy

    if URI(request.referer).path == "/buildings/#{@building.id}"
      redirect_to("/", :notice => "Building deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Building deleted.")
    end
  end
end
