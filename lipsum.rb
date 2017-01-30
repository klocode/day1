#!/usr/bin/env ruby

lipsum_wanted = ARGV[0].downcase
num = ARGV[1] ? ARGV[1].to_i : 1

original = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Nunc et auctor enim. Curabitur malesuada rutrum leo volutpat elementum.
Nam finibus sollicitudin purus, non ultricies ligula laoreet nec.
Sed cursus, nisi id tempus lobortis, lectus eros fermentum tellus, vitae elementum urna nisi et sem.
Nullam nec odio nisi. Donec ac nulla tristique, semper elit porta, tincidunt tortor.
Phasellus in interdum erat, non aliquet ante.
Cras eu vestibulum sapien, eu tincidunt dolor.
Etiam vitae consequat elit. Suspendisse eu orci sed sapien condimentum iaculis.
Vivamus ultricies libero ornare leo aliquam euismod.
Proin vel tristique nunc. Duis eget arcu felis.
Proin ut eleifend mi. Mauris ultricies turpis ac nibh eleifend tempus. Vivamus rutrum blandit est id porttitor.".freeze

samuel = "Well, the way they make shows is, they make one show.
That show's called a pilot. Then they show that show to the people who make shows,
and on the strength of that one show they decide if they're going to make more shows.
Some pilots get picked and become television programs.
Some don't, become nothing. She starred in one of the ones that became nothing.".freeze

hipster = "Glossier jean shorts jianbing, sartorial prism hell of 8-bit echo park tote bag distillery forage cold-pressed vaporware food truck. Chicharrones biodiesel microdosing, meditation hella put a bird on it ethical. Vaporware direct trade narwhal brooklyn, fap locavore pinterest.
Ramps meditation twee, cronut cliche austin plaid four loko trust fund.
Yuccie bitters four dollar toast, PBR&B succulents normcore neutra tofu humblebrag celiac migas disrupt food truck.
Post-ironic gentrify hoodie single-origin coffee vaporware fam. Mumblecore deep v swag venmo selvage.".freeze

(num < 1 ? 1 : num).times do
  case lipsum_wanted
  when '1'
    puts original.to_s
    system("echo \"#{original}\" | pbcopy")

  when '2'
    puts samuel.to_s
    system("echo \"#{samuel}\" | pbcopy")

  when '3'
    puts hipster.to_s
    system("echo \"#{hipster}\" | pbcopy")

  else
    puts "Please select an option 1, 2, or 3 and then a number multiplier"
  end
end
