require 'date'
require 'time'

class Application

    def call(env)
        resp = Rack::Response.new

        d = Time.now

        if d.hour < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
            # resp.write "It's#{d.strftime("%l:%M %p")}"
        end

        resp.finish
    end
end

