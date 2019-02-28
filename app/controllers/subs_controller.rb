class SubsController < ApplicationController

#   Read / Get the ones below

# shows all of the items in the model
# index @model_names = Model_name.all

# Searchs for a record to update / render edit form
# edit @model_name - Model_name.find(params[:id])

# Search record / shows a specific record
# show @model_name = Model_name.find(params[:id])

# creates a record in memory / rendering the new form
# new @model_name = Model_name.new

# Create / post one below
# post onto database
# create Model_name.create(model_name_params)

before_action :find_sub, only:[:show, :edit, :update, :destroy]

  def index
    @subs = Sub.all
  end

  def show
  end

  def new
    @sub = Sub.new
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to subs_path
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @sub.update(sub_params)
      redirect_to @sub
    else
      render :edit
    end
  end

  def destroy
    @sub.destroy
    redirect_to subs_path
  end

  private

  def sub_params
  params.require(:sub).permit(:name)
  end

  def find_sub
    @sub = Sub.find(params[:id])
  end

end
