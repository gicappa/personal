# Merlino
Merlino is a gem that will help rails developer in developing a wizard. Merlino's main features are:
* change model is not needed: you can add Merlino's capabilities adding object (decorators) following the OCP aim
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
