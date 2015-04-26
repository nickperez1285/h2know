class DeviceController < ApplicationController
  layout 'admin' 
  def index 
    @devices= Device.all 
  end 

  def show 
    @device = Device.find(params[:id])
  end 

  def new 
    @device = Device.new
  end 

  def edit 
    @device = Device.find(params[:id])
  end 
  def update
    @device = Device.find(params[:id])
      if @device.save
      flash[:notice] = " device updated successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def create 
    @device = Device.new(device_params)
    if @device.save
      flash[:notice] = " device created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end 
  


  def delete
  @device = Device.find(params[:id])
end

    def destroy
   @device = Device.find(params[:id])
  @device.destroy
  redirect_to(:action => 'index')

    end
  





def device_params
  params.require(:device).permit(:device_num, :location)

end
end
