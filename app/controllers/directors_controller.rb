class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
    @movie = Movie.new
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new
    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    save_status = @director.save

    if save_status == true
      redirect_to("/directors/#{@director.id}", :notice => "Director created successfully.")
    else

    end
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    save_status = @director.save

    if save_status == true
      redirect_to("/directors/#{@director.id}", :notice => "Director updated successfully.")
    else

    end
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy

    if URI(request.referer).path == "/directors/#{@director.id}"
      redirect_to("/", :notice => "Director deleted.")
    else
      redirect_to(:back, :notice => "Director deleted.")
    end
  end
end
