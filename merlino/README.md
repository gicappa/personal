# Merlino
Merlino is a gem that will help rails developer in developing a wizard. Merlino's main features are:

* is not needed a change in the model: you can add Merlino's capabilities adding object (decorators) following the OCP aim
* add a validation of the model specific to steps
* multiple model wizard with a final save
* supports back and next button
* can involve multiple models during the wizard collection of datas
  
## Model
For every model involved in the wizard a decorator have to be created. Each decorator will be specific of the model and the step involved

```ruby
class Cheese < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :weight
end
	
class Wine < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :year
end
	
class CheeseStepOne
	decorates :cheese
	validates_presence_of :name
end
	
class CheeseStepTwo
	decorates :cheese
	validates_presence_of :weight
end
	
class WineStepOne
	decorates :wine
	validates_presence_of :name		
end

class WineStepThree
	decorates :wine
	validates_presence_of :year		
end
```

## Controller
It's needed a controller ad hoc to handle the wizard steps. In the controller will be declared which models are involved for every step

```ruby
class ShopWizardController < ApplicationController
	merlino do
		step :step_one,		models => [:cheese_step_one, :wine_step_one]
		step :step_two,		models => :cheese_step_two
		step :step_three,	models => :wine_step_three
	end
end
```

Some helpers method will be defined in the controller 

```ruby
def steps
	# will return all the steps name of the wizard
end

def current_step
	# will return the current step name of the wizard
end

def next_step
	# will return the next step name of the wizard
end

def previous_step
	# will return the previous step name of the wizard
end

def first_step?
	# will return true if current step is the first, false otherwise
end

def last_step?
	# will return true if current step is the last, false otherwise
end
```

## Views
The views are placed in the directory ```app/views/shop_wizard``` and will have the the names of the steps.

## Routes
Following routes will be added to the application:

```ruby
get "/shop_wizard/" => "shop_wizard#init", :as => :shop_wizard_init # initialize session for the wizard 
post "/shop_wizard/:step" => "shop_wizard#next", :as => :shop_wizard_next # goes to the next step
delete "/shop_wizard/:step" => "shop_wizard#next", :as => :shop_wizard_back # goes to the previous step
post "/shop_wizard/" => "shop_wizard#create", :as => :shop_wizard_create # finally create models
```

### TODO
Add skip_step
Add a devise integration using the signup as a step
Add views helpers for next previous button and step(:my_step)
