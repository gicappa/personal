class IrregularVerbsController < ApplicationController
  # GET /irregular_verbs
  # GET /irregular_verbs.json
  def index
    @irregular_verbs = IrregularVerb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @irregular_verbs }
    end
  end

  # GET /irregular_verbs/1
  # GET /irregular_verbs/1.json
  def show
    @irregular_verb = IrregularVerb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @irregular_verb }
    end
  end

  # GET /irregular_verbs/new
  # GET /irregular_verbs/new.json
  def new
    @irregular_verb = IrregularVerb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @irregular_verb }
    end
  end

  # GET /irregular_verbs/1/edit
  def edit
    @irregular_verb = IrregularVerb.find(params[:id])
  end

  # POST /irregular_verbs
  # POST /irregular_verbs.json
  def create
    @irregular_verb = IrregularVerb.new(params[:irregular_verb])

    respond_to do |format|
      if @irregular_verb.save
        format.html { redirect_to @irregular_verb, notice: 'Irregular verb was successfully created.' }
        format.json { render json: @irregular_verb, status: :created, location: @irregular_verb }
      else
        format.html { render action: "new" }
        format.json { render json: @irregular_verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /irregular_verbs/1
  # PUT /irregular_verbs/1.json
  def update
    @irregular_verb = IrregularVerb.find(params[:id])

    respond_to do |format|
      if @irregular_verb.update_attributes(params[:irregular_verb])
        format.html { redirect_to @irregular_verb, notice: 'Irregular verb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @irregular_verb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irregular_verbs/1
  # DELETE /irregular_verbs/1.json
  def destroy
    @irregular_verb = IrregularVerb.find(params[:id])
    @irregular_verb.destroy

    respond_to do |format|
      format.html { redirect_to irregular_verbs_url }
      format.json { head :no_content }
    end
  end
end
