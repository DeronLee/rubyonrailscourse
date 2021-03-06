class ListingsController< ApplicationController
  
  def index 
    @listings = Listing.all
  end
  
  def new
    @listing = Listing.new
  end
  
  def create
    binding.pry
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listings_path
    else
      render 'new'
    end
  end
  
  private 
  def listing_params
    params.require(:listing).permit(:description)
    puts 'test'
  end
  
end