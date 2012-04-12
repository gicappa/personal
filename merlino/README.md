# Merlino
Merlino is a gem that will help rails developer in developing a wizard. Merlino's main features are:
* change model is not needed: you can add Merlino's capabilities adding object (decorators) following the OCP aim
* add a validation of the model specific to steps
* multiple model wizard with a final save
* supports back and next button
* can involve multiple models during the wizard collection of datas
  
## Controller
It's needed a controller ad hoc to handle the wizard steps. In the controller will be declared which models are involved for every step

## Model
For every model involved in the wizard a decorator have to be created. Each decorator will be specific of the model and the step involved
