class AddblogController < ApplicationController

def show
@apple_info = " "
@password = params[:password]
@password_db = Admin.first.password
if @password == nil
	@apple_info = "No password"
else
if Digest::SHA256.hexdigest(@password) == @password_db
	# get the time, and make it look nice, could probably be done better :)
time = Time.new
if time.wday == 0
		dayofname = "Sunday"
	elsif time.wday == 1
		dayofname = "Monday"
	elsif time.wday == 2
		dayofname = "Tuesday"
	elsif time.wday == 3
		dayofname = "Wednesday"
	elsif time.wday == 4
		dayofname = "Thursday"
	elsif time.wday == 5
		dayofname = "Friday"
	elsif time.wday == 6
		dayofname = "Saturday"
end
# nice output stuff, probably easier way to do this
if time.month < 10
	month = "0#{time.month}"
else
	month = time.month
end
if time.day < 10
	day = "0#{time.day}"
else
	day = time.day
end
if time.hour < 10
	hour = "0#{time.hour}"
else
	hour = time.hour
end
if time.min < 10
	min = "0#{time.min}"
else 
	min = time.min
end
# output date
@id_date =  "#{dayofname}" + ", " + "#{time.year}" + "-" + "#{month}" + "-" + "#{day}" + "  " + "#{hour}" + ":" + "#{min}"
	# blog entry name
    @id = params[:applename]
    @id_entry = params[:entry]
    if @id == nil
    	@apple_info = " "
    else
		# add to db stuff
			a = Blog.new
			a.entry = @id_entry
			a.name = @id
			a.date = "#{dayofname}" + ", " + "#{time.year}" + "-" + "#{month}" + "-" + "#{day}" + "  " + "#{hour}" + ":" + "#{min}"
			a.save
		
		# show stuff
			@apple_info = @id +  @id_entry + @id_date
    end
else
	@apple_info = "Wrong password idiot."
end
end
end

end
