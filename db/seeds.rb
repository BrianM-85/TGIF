require 'csv'

# shows
full_house = Show.create(name: "Full House", description: "After the death of his wife Pam, sports anchor Danny Tanner recruits his brother-in-law Jesse, a rock musician, and his best friend since childhood, Joey, who works as a stand-up comedian, to help raise his three young daughters. Over time, the three men, as well as the children, bond and become closer to one another.", image_url: "/images/Full House Logo.jpg")
family_matters = Show.create(name: "Family Matters", description: "What matters most? Family, of course! Over its nine hit seasons, Family Matters brings us a hilarious slice of middle-class Americana -- along with one of TV's wackiest characters, nerdy genius Steve Urkel. The extended Winslow family redefines the word 'togetherness' as their home splits at the seams with chaos, confusion and laughter.", image_url: "/images/Family Matters Logo.jpg")
perfect_strangers = Show.create(name: "Perfect Strangers", description: "The series chronicles the relationship of Larry Appleton and his distant cousin Balki Bartokomous. Larry, a Wisconsin native from a large family, has just moved into his first apartment in Chicago, and is savoring his first taste of privacy when Balki, a hitherto-unknown cousin from a Mediterranean island, Mypos, arrives intending to move in with him.", image_url: "/images/Perfect Strangers Logo.jpg")
just_ten = Show.create(name: "Just the Ten of Us", description: "The series focuses on Graham Lubbock, a Catholic gym teacher who used to teach at the high school that Growing Pains characters Mike and Carol Seaver had attended on Long Island, and the father of eight children.", image_url: "/images/Just10 Logo.jpg")
going_places = Show.create(name: "Going Places", description: "The production staff of The Dick Roberts Show has its hands full booking guests for the outrageous talk show and dealing with its egomaniacal host. After work, Charlie, Jack, Alex and Kate share a house together with Kate's 8-year-old nephew Nick, who is quite a handful himself.", image_url: "/images/Going Places Logo.jpg")
step_by_step = Show.create(name: "Step By Step", description: "When two mismatched single parents fall in love, marry and move in together with their six mismatched kids, they hope it's only a matter of time until they all come to love their new life.	", image_url: "/images/Step by Step Logo.jpg")
baby_talk = Show.create(name: "Baby Talk", description: "Baby Talk featured the adventures of Baby Mickey, as he commented to the audience on the misgivings and new wonders of his world.", image_url: "/images/Baby Talk Logo.jpg")
dinosaurs = Show.create(name: "Dinosaurs", description: "Meet the Sinclairs -- the funniest family in 60 million years! They're just your average family with one BIG difference. They're dinosaurs, living the good life in sixty million and three B.C.! Daddy Earl, his wife Fran, their kids Robbie, Charlene, and the Baby, and feisty Grandma Ethyl bring a hilarious Jurassic twist to daily life.", image_url: "/images/Dinosaurs Logo.jpg")
billy = Show.create(name: "Billy", description: "Following the end of the show this was spun-off of, Head of the Class, Billy moves to Berkeley, California, where he marries Mary Springer, a single mom with several children, so he could get his green card. The marriage is arranged in order to prevent Billy from being deported back to the UK. Billy becomes Mary's boarder, living in her basement apartment with the strictest of rules: no drinking, no smoking, no pets, and no sex. The series follows Billy's misadventures as he adjusts to life in California while staying one step ahead of immigration officials seeking to prove his marriage is a sham.", image_url: "/images/Billy Logo.jpg")
getting_by = Show.create(name: "Getting By", description: "Two very different single mothers work for the Chicago Welfare Office. In order to save money, the two decide to combine their families and share a home.", image_url: "/images/Getting By Logo.jpg")
where_i_live = Show.create(name: "Where I Live", description: "The series starred Doug E. Doug as Douglas St. Martin, a Trinidadian American teenager living in the Harlem section of New York City. He lived with his caring, hard-working parents and his younger sister. Much of the show focused on Douglas's misadventures with his best friends.", image_url: "/images/Where I Live Logo.jpg")
camp_wilder = Show.create(name: "Camp Wilder", description: "Ricky Wilder has been through a bad marriage and is now raising a young daughter. When her parents die, she moves back to her old home to be the guardian to her two teenage siblings. As if that wasn't difficult enough, her brother's eccentric best friend always drops in to add to the hilarity.", image_url: "/images/Camp Wilder Logo.jpg")
boy_meets_world = Show.create(name: "Boy Meets World", description: "An adolescent with two siblings tests his various theories about life as he endures the trials of growing up alongside a good friend.", image_url: "/images/Boy Meets World Logo.jpg")
hangin_with_mr_cooper = Show.create(name: "Hangin' with Mr. Cooper", description: "Life couldn't be better for Mark Cooper. He's charming, funny, playful and athletic--a really great guy ... And he'll be the first to tell you so! Just out of school and on his own for the first time, Mark shares a house with two beautiful women. The former college basketball superstar and ultimate prankster also happens to be the coolest substitute teacher around in Hangin' With Mr. Cooper.", image_url: "/images/Hangin with Logo.jpg")
sister_sister = Show.create(name: "Sister, Sister", description: "Sister, Sister is a half-hour comedy series which chronicles the adventures of a reunited set of identical twins, Tia Landry and Tamera Campbell. The teens live with their adoptive parents, conservative businessman Ray Campbell and brassy, outspoken Lisa Landry in the suburbs of Detroit. Together, this unconventional blended family is learning lessons in life, laughter and love.", image_url: "/images/Sister Sister Logo.jpg")
on_our_own = Show.create(name: "On Our Own", description: "When the seven Jerrico siblings are left orphaned by a tragic accident, eldest brother Josh takes charge, determined that the family won't be split up and put into foster care.", image_url: "/images/On Our Own Logo.jpg")
muppets_tonight = Show.create(name: "Muppets Tonight", description: "Kermit the Frog, Clifford and friends struggle to put on a weekly TV variety show.", image_url: "URL")
aliens = Show.create(name: "Aliens in the Family", description: "Doug Brody is kidnapped by an alien mom named Cookie. They marry and hilariously try to blend their blended family into everyday life. The aliens were puppets designed by Jim Henson's Creature Shop.", image_url: "URL")
sabrina = Show.create(name: "Sabrina the Teenage Witch", description: "Sabrina is a normal teenager, except for one thing -- she's a witch! Guided by her aunts, who come from a long line of witches, and Salem, a mischievous warlock doing penance as a black cat, Sabrina continually struggles to harness her powers while wittingly wreaking havoc on friends and foes alike. While struggling through the growing pains associated with being a witch and getting into lots of harmless trouble along the way, Sabrina realizes that magic is not quite as easy as pointing your finger.", image_url: "URL")
clueless = Show.create(name: "Clueless", description: "A follow-up to the blockbuster movie of the same name, following the rich teenager Cher and her friends as they attend high school in Beverly Hills.", image_url: "URL")
you_wish = Show.create(name: "You Wish", description: "A single mother reluctantly accepts the services of a genie, who's been imprisoned in a magic carpet for two thousand years.", image_url: "URL")
teen_angel = Show.create(name: "Teen Angel", description: "After eating a six-month-old hamburger, Marty DePolo dies and God's Cousin Rod appoints him as his best friend's guardian angel.", image_url: "URL")
two_of_a_kind = Show.create(name: "Two of a Kind", description: "A show about a single father who has his hands full raising twin sisters Mary-Kate and Ashley.", image_url: "URL")
pizza_place = Show.create(name: "Two Guys, a Girl, and a Pizza Place", description: "Three twenty-somethings share a Boston apartment and hang around (and work) at a pizza place.", image_url: "URL")
brothers_keeper = Show.create(name: "Brother's Keeper", description: "The series centers around Porter Waide, a milquetoast college History professor and widowed single father, raising his son, Oscar, by himself until his brother, Bobby, a football placekicker who had just been signed to play with the San Francisco 49ers and has a reputation for being a bad boy, moves in with his brother and nephew, as part of a stipulation in his new multimillion-dollar contract in which Bobby has to live with someone who is more responsible than him, in order to change his troublemaking ways.", image_url: "URL")
the_hughleys = Show.create(name: "The Hughley's", description: "Darryl Hughley, who owns his own vending machine business, moving out of from South Central to West Hills, a predominately white neighborhood within the San Fernando Valley. Darryl and his family try to adjust to living in an all-white area, at the same time trying to not forget who they are and where they came from.", image_url: "URL")
odd_man_out = Show.create(name: "Odd Man Out", description: "Set around fifteen-year-old Andrew Whitney, the only male in a house full of females. He is constantly surrounded by his three sisters (Val, Paige, and Elizabeth), Aunt Jordan, and widowed mom, Julia.", image_url: "URL")
making_the_band = Show.create(name: "Making the Band", description: "The final show introduced to TGIF was a reality TV show created by ABC & MTV about forming a boy band called O-Town.", image_url: "URL")



#program years
ProgramYear.create(name: 'Fall 1989 - Spring 1990', start_date: '1989-09-22', end_date: '1990-05-04')
ProgramYear.create(name: 'Fall 1990 - Spring 1991', start_date: '1990-09-21', end_date: '1991-05-03')
ProgramYear.create(name: 'Fall 1991 - Spring 1992', start_date: '1991-09-20', end_date: '1992-05-08')
ProgramYear.create(name: 'Fall 1992 - Spring 1993', start_date: '1992-09-18', end_date: '1993-05-21')
ProgramYear.create(name: 'Fall 1993 - Spring 1994', start_date: '1993-09-24', end_date: '1994-05-20')
ProgramYear.create(name: 'Fall 1994 - Spring 1995', start_date: '1994-09-23', end_date: '1995-05-19')
ProgramYear.create(name: 'Fall 1995 - Spring 1996', start_date: '1995-09-22', end_date: '1996-05-17')
ProgramYear.create(name: 'Fall 1996 - Spring 1997', start_date: '1996-09-20', end_date: '1997-08-15')
ProgramYear.create(name: 'Fall 1997 - Spring 1998', start_date: '1997-10-03', end_date: '1998-07-24')
ProgramYear.create(name: 'Fall 1998 - Spring 1999', start_date: '1998-09-25', end_date: '1999-05-21')
ProgramYear.create(name: 'Fall 1999 - Spring 2000', start_date: '1999-09-24', end_date: '2000-05-05')

#weeks
weeks_csv_text = File.read(Rails.root.join('db', 'TGIF Weeks.csv'))
weeks_text = CSV.parse(weeks_csv_text, :headers => true, :encoding => 'ISO-8859-1')
weeks_text.each do |row|
  w = Week.new
  w.program_year_id = row['program_year_id']
  w.week_num = row['week_num']
  w.friday_date = row['friday_date']
  w.slot_8pm = row['slot_8pm']
  w.slot_830pm = row['slot_830pm']
  w.slot_9pm = row['slot_9pm']
  w.slot_930pm = row['slot_930pm']
  w.save
end

#episodes
episodes_csv_text = File.read(Rails.root.join('db', 'TGIF Episodes.csv'))
episodes_text = CSV.parse(episodes_csv_text, :headers => true, :encoding => 'ISO-8859-1')
episodes_text.each do |row|
  e = Episode.new
  e.show_name = row['show_name']
  e.show_id = row['show_id']
  e.season = row['season']
  e.episode_num = row['episode_num']
  e.name = row['name']
  e.original_air_date = row['original_air_date']
  e.synopsis = row['synopsis']
  e.save
end



