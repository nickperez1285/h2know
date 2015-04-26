class DeviceController < ApplicationController
    # respond_to :html, :xml, :json
  layout 'admin' 
  def index 
    @devices= Device.all 
  end 

  def show 
    @device = Device.find(params[:id])
    respond_to do |format| 
      format.html
      format.xml { render :xml => @device.to_xml }
    format.json {render :json => @device}
     end 
  end 

  def new 
    @device = Device.new
  end 

  def edit 
    @device = Device.find(params[:id])
  end 

  def update
    @device = Device.find(params[:id])
      if @device.update_attributes(device_params)
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
