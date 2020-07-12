# sleep_alert.rb

status = [ 'awake', 'tired' ].sample

alert = if status == 'awake'
         'Be productive!'
        else status
          'Go to sleep!'
        end

p alert