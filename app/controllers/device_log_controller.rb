class DeviceLogController < ApplicationController
	def index
		@device_log= DeviceLog.all 
	end 
end
