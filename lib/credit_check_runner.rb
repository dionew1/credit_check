require './check'

numbers = ["4929735477250543", "5541808923795240", "4024007136512380",
"6011797668867828", "5541801923795240", "4024007106512380", "6011797668868728",
"342804633855673", "342801633855673"]

numbers.each { |number| p Check.new(number).divide_by_ten }