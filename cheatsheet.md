
See all restaurants

1. Routes
<!-- http_verb "/path", to: "controller#action -->
get "/restaurants", to: "restaurants#index"

2. Controller
Don't have a controller? -> rails g controller restaurants

def index
  @restaurants = Restaurant.all
end

3. View
Create file with the same name as the method `index.html.erb`


See details about one restaurant

1. Routes
get "/restaurants/:id", to: "restaurants#show"

2. Controller

def show
  @restaurant = Restaurant.find(params[:id])
end

3. View
Create file with the same name as the method `show.html.erb`


Create a restaurant
  Two step
    1) To display the form (get)
    2) To submit the form and create a new restaurant (post)

  1) To diplay the form

    1. Routes
    get "restaurants/new", to: "restaurants#new"

    2. Controller
      def new
        @restaurant = Restaurant.new
      end

    3. View

  2) Submit the form

    1. Routes
    post "restaurants", to: "restaurants#create"

    2. Controller
      def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.save
        # redirect_to prefix_path
        redirect_to restaurant_path(@restaurant)
      end

    3. View



Update a restaurant
    Two step
    1) To display the form (get)
    2) To submit the form and update the restaurant (patch)





Destroy a restaurant
