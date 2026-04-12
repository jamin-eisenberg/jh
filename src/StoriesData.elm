module StoriesData exposing (initialStories)

import Array
import Date
import Stories exposing (Stories(..))
import Story
import Time


initialStories : Stories
initialStories =
    Stories
        (Array.fromList
            [ { title = "The Pankows"
              , description = [ Story.text "We'll try to keep the exposition minimal, because this is the story of our lives together. Hailey Pankow was born to Juli and Dale Pankow in Brockville, Canada. She moved to Lima, Ohio in 2006, and then to Newtown, CT in 2010.", Story.image "child-hailey.JPG" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 984114000000)
              , dateIsApproximate = False
              , iconImageName = "icon-the-pankows.jpg"
              , aabb = { x = 2016, y = 83, width = 191, height = 147 }
              , hitbox = [ { x = 2032, y = 230 }, { x = 2205, y = 166 }, { x = 2207, y = 91 }, { x = 2022, y = 83 }, { x = 2016, y = 208 } ]
              }
            , { title = "The Eisenbergs"
              , description = [ Story.text "Jamin Eisenberg was born to Marla Eisenberg in St.Paul, Minnesota. He moved to Minneapolis in 2003.", Story.image "child-jamin.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1006664400000)
              , dateIsApproximate = False
              , iconImageName = "icon-the-eisenbergs.jpg"
              , aabb = { x = 1772, y = 80, width = 178, height = 183 }
              , hitbox = [ { x = 1772, y = 80 }, { x = 1950, y = 80 }, { x = 1932, y = 130 }, { x = 1915, y = 255 }, { x = 1805, y = 263 }, { x = 1778, y = 223 } ]
              }
            , { title = "Northeastern"
              , description = [ Story.text "We both started at Northeastern in 2019. Jamin majored in Computer Engineering and Computer Science. Hailey majored in Mechanical Engineering with a minor in Computer Science. After we started dating, we figured out that we had actually been in a class together in our second semester: Fundamentals of Computer Science 1. It was a big class, so we never actually interacted, but it's a fun fact. ", Story.text "Hailey had a couple other CS classes for her minor, so in our last semester (after we had been dating for a while), we decided to take Computer Systems together. It was a lot of fun to go to lectures together, and we were partners for all the homeworks - pretty ideal!", Story.image "northeastern-sign.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1567569600000)
              , dateIsApproximate = False
              , iconImageName = "icon-northeastern.jpg"
              , aabb = { x = 252, y = 1418, width = 203, height = 202 }
              , hitbox = [ { x = 252, y = 1420 }, { x = 441, y = 1418 }, { x = 455, y = 1612 }, { x = 260, y = 1620 } ]
              }
            , { title = "First Meeting"
              , description = [ Story.text "The summer after our sophomore year, people were getting vaccinated, COVID restrictions were lightening, and Northeastern was resuming resident events. One of the first events was a picnic on the Charles River Esplanade, specifically for Northeastern students living in the \"leased properties\" (one of a few buildings Northeastern didn't actually own).", Story.text "We met at some benches close to our building. Hailey was the first one there (of course) and Jamin was the second. We didn't end up talking until some other, more extroverted people arrived. It was an eclectic group that signed up, but everyone was very friendly, eager to talk with people besides the ones they'd been living with. About 10 of us all walked from Northeastern's campus to the Esplanade. It was a lovely evening, and the picnic ended up lasting until the sun went down. ", Story.text "On the way back, the group was more comfortable with each other so we started out walking in a sort of mob. But the two of us tend to walk faster than most, so we ended up chatting together. We mostly talked about what classes we enjoyed and what we do for fun, which worked out well for us as we have a lot of common interests: math, engineering, reading, board games, etc. We kept getting too far ahead of the group as we were walking and had to stop to let them catch up. When we all got back, a bunch of us exchanged numbers.", Story.text "Ordinarily, Hailey probably wouldn't have gone, but her roommate Aidan had been out of town for a few weeks, and Hailey wanted to spend time with some other people. Jamin almost decided not to go because he had been walking around Harvard for most of the day and was feeling tired, but he wanted to make some new friends. We often talk about how different our lives might have been if Aidan was in town or Jamin decided he was too tired or even if it had rained. We also talk about how it was such a good first meeting for us. Neither of us meet new people very often, and it was great that everyone was so open to talking because it was right after COVID.", Story.image "empty-esplanade.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1621569600000)
              , dateIsApproximate = False
              , iconImageName = "icon-first-meeting.jpg"
              , aabb = { x = 1245, y = 1039, width = 254, height = 238 }
              , hitbox = [ { x = 1245, y = 1174 }, { x = 1364, y = 1039 }, { x = 1499, y = 1134 }, { x = 1358, y = 1277 } ]
              }
            , { title = "First Game Night"
              , description = [ Story.text "The few people that exchanged numbers at the picnic where we first met ended up getting together a couple times. The first outing was to Brookline Booksmith, a bookstore. The second activity was playing board games in Jamin's apartment. We played a couple different games: Coup, Don't Mess With Cthulhu (pictured), and some others that we don't remember now. It was a lot of fun, and at this point we were feeling more comfortable around each other.", Story.text "We both love board games, and still play plenty - at least once or twice a week. Don't Mess With Cthulhu remains one of our favorites. Some of our other favorites include The Crew, Ticket to Ride, Codenames, Bohnanza, So Clover, Kingdomino, Letter Jam, and Mantis Falls.", Story.text "Don't forget to make us a So Clover card at our guest book table (if you're currently at the wedding).", Story.image "dont-mess-with-cthulhu.jpg", Story.image "board-game-shelf.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1622779200000)
              , dateIsApproximate = False
              , iconImageName = "icon-first-game-night.jpg"
              , aabb = { x = 884, y = 1640, width = 282, height = 258 }
              , hitbox = [ { x = 884, y = 1811 }, { x = 886, y = 1769 }, { x = 947, y = 1684 }, { x = 989, y = 1648 }, { x = 1037, y = 1640 }, { x = 1102, y = 1692 }, { x = 1166, y = 1777 }, { x = 1114, y = 1861 }, { x = 1027, y = 1890 }, { x = 933, y = 1898 } ]
              }
            , { title = "Farmers Market"
              , description = [ Story.text "One of our other outings with the group from the picnic where we met was Haymarket, which is a very affordable outdoor produce market. It quickly became a weekly outing for whoever was interested in going. We usually just hopped on the orange line from Northeastern and spent some time together buying fruits and vegetables for the week. We also sometimes got lunch at Boston Public Market which is right next door. " ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1624075200000)
              , dateIsApproximate = False
              , iconImageName = "icon-farmers-market.jpg"
              , aabb = { x = 205, y = 1156, width = 172, height = 256 }
              , hitbox = [ { x = 292, y = 1156 }, { x = 205, y = 1245 }, { x = 218, y = 1330 }, { x = 294, y = 1412 }, { x = 377, y = 1328 }, { x = 377, y = 1211 } ]
              }
            , { title = "Book Loan"
              , description = [ Story.text "At our second game night, we talked about The Martian by Andy Weir, which we had both read. Hailey hadn't read Artemis though, an earlier book by the same author. Jamin owned a copy and offered to loan it to her. We lived in the same building at the time, so it was very easy to stop by and drop it off. Actually, Jamin was planning to use the opportunity to ask Hailey on a date, but Aidan, her roommate, answered the door, so Jamin chickened out. Hailey read it and returned it on our second date. ", Story.text "Since then, we've shared many books, but for whatever reason we typically listen to or read sci-fi together. Some of our favorites include Project Hail Mary, short stories by Ted Chiang (Stories of Your Life and Others and Exhalation), and short stories by Isaac Asimov.", Story.image "artemis.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1624248000000)
              , dateIsApproximate = False
              , iconImageName = "icon-book-loan.jpg"
              , aabb = { x = 1752, y = 1382, width = 180, height = 256 }
              , hitbox = [ { x = 1752, y = 1434 }, { x = 1913, y = 1382 }, { x = 1932, y = 1620 }, { x = 1795, y = 1638 }, { x = 1762, y = 1608 } ]
              }
            , { title = "First Date"
              , description = [ Story.text "Up until our first date, we had pretty much exclusively texted about going to Northeastern's game club together. One of us would ask the other if they wanted to go that night, and inevitably that day wouldn't work for the other. This happened again on July 2nd, but this time Jamin responded by saying that he'd rather take Hailey to dinner and get to know each other better. Hailey said yes and we decided to meet in Harvard Square! ", Story.text "We walked around the square for a bit, evaluating our dinner options and chatting. We settled on The Maharaja, an Indian restaurant (hence the samosa icon). We were both pretty nervous because besides our first meeting, we hadn't really talked one on one before. Conversation was a little stilted, but we both relaxed a little when we admitted that we weren't used to going on dates. We talked about the basics, mostly: our families, our daily lives, etc. The restaurant looks out onto the street, so we talked plenty about passers-by, which is still one of our favorite activities in public. We checked in when we each got home and let each other know that we had a good time!", Story.text "Every year on our first date anniversary we have Indian food, and we usually talk about our first date and our relationship since then." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1625198400000)
              , dateIsApproximate = False
              , iconImageName = "icon-first-date.jpg"
              , aabb = { x = 1559, y = 407, width = 236, height = 215 }
              , hitbox = [ { x = 1644, y = 407 }, { x = 1718, y = 508 }, { x = 1795, y = 546 }, { x = 1740, y = 594 }, { x = 1688, y = 616 }, { x = 1619, y = 622 }, { x = 1559, y = 596 } ]
              }
            , { title = "\"Long\" Distance"
              , description = [ Story.text "The day of our first date was the day Jamin bought furniture for his new apartment (the lease started on 7/1). His new apartment was in Cambridge, about a 20 minute bike ride from Hailey, or a 35 minute bus. This trend continued for our last two years at Northeastern. Jamin lived in three different places, relatively far from campus, and Hailey stayed in the same building that we lived in when we met until graduation.", Story.text "While it was unfortunate timing for the start of our relationship, we think the distance in the beginning was probably good for us in the long run. It did start to wear on us after a while - it was tough to commit to traveling for a while just to see each other." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1625198400000)
              , dateIsApproximate = True
              , iconImageName = "icon-long-distance.jpg"
              , aabb = { x = 1513, y = 1883, width = 241, height = 135 }
              , hitbox = [ { x = 1515, y = 1883 }, { x = 1752, y = 1892 }, { x = 1754, y = 2018 }, { x = 1513, y = 2004 } ]
              }
            , { title = "Second Date"
              , description = [ Story.text "For our second date, we walked around the Fens (a park), got some ice cream, and saw a movie. Hailey returned Artemis, the book she had borrowed. We talked about Artemis, as well as some other books, about being outdoors, and some other miscellaneous things. We were both very sticky after ice cream and we spent a while walking around trying to find somewhere we could wash our hands. That ended up being a drinking fountain. Jamin chose this time to ask Hailey if she wanted to hold hands as we walked to the movie, and our wet hands ended up making that a very slippery and overstimulating experience. We didn't hold hands again for a few months.", Story.text "Overall, it was a much slower-paced and more comfortable date. Hailey and her roommate Aidan ended up coming over the following day for dinner with Jamin's roommates, which we think helped establish that we were still also friends - a good place to be at the start of a relationship." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1625889600000)
              , dateIsApproximate = False
              , iconImageName = "icon-second-date.jpg"
              , aabb = { x = 1223, y = 727, width = 167, height = 329 }
              , hitbox = [ { x = 1305, y = 727 }, { x = 1390, y = 755 }, { x = 1382, y = 858 }, { x = 1297, y = 1056 }, { x = 1245, y = 874 }, { x = 1223, y = 830 }, { x = 1239, y = 774 } ]
              }
            , { title = "First Kiss"
              , description = [ Story.text "This one is a bit cheesy and a bit embarrassing so don't give us too hard a time about it.", Story.text "Our first and second dates did not end in a way that made a first kiss convenient. At the end of each, we were in crowded places, trying to bike or take the T back home. So, Jamin stopped by on the Wednesday after our second date, and texted Hailey that he had a question and asked if she could meet up real quick. He asked if she wanted to kiss and she said yes, but that her breath wasn't great at the moment. Jamin offered her a mint (he had already had one) and we had our first kiss! " ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1626235200000)
              , dateIsApproximate = False
              , iconImageName = "icon-first-kiss.jpg"
              , aabb = { x = 906, y = 52, width = 232, height = 196 }
              , hitbox = [ { x = 1001, y = 52 }, { x = 1114, y = 79 }, { x = 1138, y = 163 }, { x = 1094, y = 228 }, { x = 1051, y = 248 }, { x = 983, y = 242 }, { x = 922, y = 193 }, { x = 906, y = 117 }, { x = 939, y = 81 } ]
              }
            , { title = "Isabella Stewart Gardner Museum"
              , description = [ Story.text "For our third date, we went to the Isabella Stewart Gardner museum. It's a very cool art museum with an interesting past that we won't get into here. We spent about two and a half hours at the museum, which is by far the longest Jamin has spent in a non-science museum. We mostly poked fun at all the strange objects, picking which ones we identified with the most and considering how things were made. That's now typical for us when we go to art museums, which we both do more together than we ever did alone.", Story.text "After the museum we walked around and had our first deeper conversation, about who we are and what we want our lives to be like." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1626580800000)
              , dateIsApproximate = False
              , iconImageName = "icon-isabella-stewart-gardner-museum.jpg"
              , aabb = { x = 916, y = 902, width = 174, height = 212 }
              , hitbox = [ { x = 916, y = 904 }, { x = 1086, y = 902 }, { x = 1090, y = 1090 }, { x = 1019, y = 1108 }, { x = 931, y = 1114 } ]
              }
            , { title = "Escape Room in a Box"
              , description = [ Story.text "For our fourth date, Hailey went over to Jamin's apartment for dinner and an escape room in a box. Jamin was very nervous about cooking for her because it was important to him that she thought he was a good cook. He made pesto pasta with chicken, asparagus, and tomatoes, and she liked it! We enjoyed the meal and then did the EXIT escape game. These escape games have lots of puzzle components like those you might find in an escape room. We both enjoy them a lot, and we've done most of them at this point.", Story.text "While Jamin was waiting with Hailey at the bus stop, as he usually did, he asked if Hailey would like to be his girlfriend. She said yes! We agreed we'd pretty much known from the start that we'd be together for a long time." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1627099200000)
              , dateIsApproximate = False
              , iconImageName = "icon-escape-room-in-a-box.jpg"
              , aabb = { x = 665, y = 52, width = 209, height = 218 }
              , hitbox = [ { x = 665, y = 52 }, { x = 866, y = 52 }, { x = 874, y = 246 }, { x = 669, y = 270 } ]
              }
            , { title = "Sharing Music"
              , description = [ Story.text "Jamin has always had a sort of main playlist that he listens to exclusively (which has evolved over time from \"Paradise by Proxy\" to \"The Good of The Best\" to \"The Better of The Best\" to \"The Best of The Best\"). Just about a month into us starting to date, he shared his playlist with Hailey. Hailey actually listened to the playlist at work! It wasn't until we graduated that he gave her permission to edit it though. ", Story.text "Now we have a playlist together (the JH playlist), primarily comprised of The Beach Boys, ABBA, 80s synth pop, and 2010s rock. Upbeat songs only! ", Story.text "Jamin's tastes have moved more into new wave and dark electronica, while Hailey likes more show tunes and sea shanties." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1627963200000)
              , dateIsApproximate = True
              , iconImageName = "icon-sharing-music.jpg"
              , aabb = { x = 1039, y = 1497, width = 210, height = 205 }
              , hitbox = [ { x = 1150, y = 1497 }, { x = 1237, y = 1527 }, { x = 1249, y = 1632 }, { x = 1200, y = 1696 }, { x = 1126, y = 1702 }, { x = 1080, y = 1668 }, { x = 1039, y = 1608 }, { x = 1069, y = 1535 } ]
              }
            , { title = "Game Club"
              , description = [ Story.text "After a full month of dating, we still hadn't gone to Northeastern's game club, the thing that initiated conversation between us! We decided to make it happen, finally. Jamin had been going to game club since the start of freshman year, and was eager to introduce Hailey to it. He was a little nervous, because game club can be a little overwhelming, but Hailey had fun! Game club is where we were introduced to The Crew, which always had us coming back for more. We ended up going together most Fridays through graduation!", Story.image "the-crew.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1628308800000)
              , dateIsApproximate = False
              , iconImageName = "icon-game-club.jpg"
              , aabb = { x = 288, y = 1783, width = 232, height = 185 }
              , hitbox = [ { x = 288, y = 1873 }, { x = 413, y = 1783 }, { x = 483, y = 1801 }, { x = 520, y = 1898 }, { x = 465, y = 1968 }, { x = 377, y = 1960 }, { x = 326, y = 1932 } ]
              }
            , { title = "Handmade Gifts"
              , description = [ Story.text "We both like to make gifts for each other, rather than buying things, but Hailey really excels here. She loves to knit and crochet, and Jamin is lucky that the things she can make always make for great gifts! She has made him many things over the years: little stuffed dinosaurs, fidget toys, a real-looking heart, big stuffed candy hearts, a stingray, a frog, a pigeon, coasters, a little lambda-shaped guy, a phone stand, winter gear, a model of the solar system, little dolls of us and hammocks to go with them, a stuffed JH, and a tie-dye sweater! It's quite a collection, and pretty much all of them are on display somewhere in our apartment. Jamin loves all of them and Hailey loves making them for him!", Story.image "sweater.jpg", Story.image "dinosaurs.jpg", Story.image "hexagon-bag.jpg", Story.image "infinity-cube.jpg", Story.image "candy-hearts.jpg", Story.image "stingray.jpg", Story.image "frog.jpg", Story.image "pigeon.jpg", Story.image "headless-pigeon.jpg", Story.image "tie-dye-coasters.jpg", Story.image "phone-stand.jpg", Story.image "winter-gear.jpg", Story.image "solar-system.jpg", Story.image "stuffed-jh.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1628568000000)
              , dateIsApproximate = True
              , iconImageName = "icon-handmade-gifts.jpg"
              , aabb = { x = 1843, y = 963, width = 389, height = 290 }
              , hitbox = [ { x = 1867, y = 1253 }, { x = 1962, y = 1164 }, { x = 2056, y = 1172 }, { x = 2147, y = 1207 }, { x = 2232, y = 1156 }, { x = 2230, y = 1019 }, { x = 2121, y = 963 }, { x = 2012, y = 995 }, { x = 1970, y = 1033 }, { x = 1932, y = 1154 }, { x = 1851, y = 1197 }, { x = 1843, y = 1231 } ]
              }
            , { title = "Watching Taskmaster"
              , description = [ Story.text "One pretty obscure similarity we discovered early in our relationship was that we both love watching Taskmaster! Taskmaster is a British comedy show where, each season, five comedians \"compete\" in a bunch of tasks. The tasks are frequently strange and always interesting. We often pause the show and talk about how we would attempt a given task. Hailey likes the tasks more, as puzzles, while Jamin is a bigger fan of the comedy. ", Story.text "We got into it independently before we started dating, but we've continued watching it together. It's definitely our favorite show. We've seen all 20 seasons - most of them multiple times. (They're all free on YouTube if you're interested.)" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1628740800000)
              , dateIsApproximate = True
              , iconImageName = "icon-watching-taskmaster.jpg"
              , aabb = { x = 995, y = 240, width = 232, height = 191 }
              , hitbox = [ { x = 1029, y = 264 }, { x = 1098, y = 240 }, { x = 1182, y = 242 }, { x = 1227, y = 298 }, { x = 1227, y = 379 }, { x = 1162, y = 427 }, { x = 1061, y = 431 }, { x = 995, y = 377 } ]
              }
            , { title = "Museum of Science"
              , description = [ Story.text "About a month into our relationship, Hailey went home to Connecticut for three weeks. Jamin was really looking forward to seeing her when she got back. Our first date when she got back was to Boston's Museum of Science. ", Story.text "We love the Museum of Science. It's got lots of fun interactive exhibits, but usually the best part is the lightning show. The museum has the world's largest air-insulated Van de Graaff generator, and it's super cool to watch the presenter go up in a Faraday cage that gets zapped with literally a million volts. Some of our other favorite exhibits include The Art of Illusion and Mathematica. We've been at least four or five times together, for several hours each." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1630814400000)
              , dateIsApproximate = False
              , iconImageName = "icon-museum-of-science.jpg"
              , aabb = { x = 1549, y = 1354, width = 236, height = 344 }
              , hitbox = [ { x = 1569, y = 1390 }, { x = 1650, y = 1354 }, { x = 1726, y = 1386 }, { x = 1746, y = 1446 }, { x = 1730, y = 1535 }, { x = 1785, y = 1696 }, { x = 1549, y = 1698 } ]
              }
            , { title = "Tie-dye"
              , description = [ Story.text "For those who haven't been around Jamin for two consecutive days, it's important to note that he always wears tie-dye. So, of course, early on in our relationship we had to do tie-dye together! Jamin got dyes and shirts, and we made some tie-dye. Even though it was pretty difficult to do in an apartment with no yard and coin-operated laundry, they turned out well! ", Story.text "Hailey likes Jamin's love of tie-dye, but seldom wears it herself. She wouldn't want to steal his thing!", Story.image "tie-dye-shirts.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1631160000000)
              , dateIsApproximate = False
              , iconImageName = "icon-tie-dye.jpg"
              , aabb = { x = 1615, y = 751, width = 252, height = 222 }
              , hitbox = [ { x = 1615, y = 820 }, { x = 1650, y = 770 }, { x = 1825, y = 751 }, { x = 1867, y = 784 }, { x = 1827, y = 971 }, { x = 1672, y = 973 } ]
              }
            , { title = "The Zoo"
              , description = [ Story.text "We love going to the zoo! Our first time going together, we could tell pretty quickly that this would be an oft-repeated outing. Our favorites are the Franklin Park Zoo and the Roger Williams Zoo (both AZA-accredited). It's a lot of fun to learn about the animals and watch them interact with each other. We especially like the monkeys, and one particular anteater. We think it's very likely that we will get a zoo membership when we have kids. The aquarium is similarly great. We know it seems a little silly, but most of our other favorite activities to do out of the house involve walking around and looking at interesting things, and the zoo is no different!" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1631937600000)
              , dateIsApproximate = False
              , iconImageName = "icon-the-zoo.jpg"
              , aabb = { x = 1688, y = 985, width = 254, height = 173 }
              , hitbox = [ { x = 1688, y = 1025 }, { x = 1690, y = 1001 }, { x = 1718, y = 985 }, { x = 1843, y = 991 }, { x = 1942, y = 1048 }, { x = 1903, y = 1158 }, { x = 1752, y = 1158 } ]
              }
            , { title = "Rocky Horror"
              , description = [ Story.text "Hailey, perhaps surprisingly, loves to go to The Rocky Horror Picture Show. For those who haven't been, it's a cult-classic musical that tends to have very interactive screenings. There's a weekly show with a shadow cast at the Boston Common theater that we've been to several times. Jamin was a little skeptical the first time we went, but we've always enjoyed going and have actually introduced it to some of our friends!", Story.text "The lips icon was one of the many icons that appeared on Hailey's six-month-iversary gift to Jamin: a map of the Boston area with little embroidered icons representing the dates we went on. It was part of the inspiration for this much more ambitious version!", Story.image "rocky-horror.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1632542400000)
              , dateIsApproximate = False
              , iconImageName = "icon-rocky-horror.jpg"
              , aabb = { x = 675, y = 749, width = 251, height = 162 }
              , hitbox = [ { x = 735, y = 761 }, { x = 868, y = 749 }, { x = 926, y = 886 }, { x = 892, y = 904 }, { x = 675, y = 911 } ]
              }
            , { title = "The Waver"
              , description = [ Story.text "Jamin created \"the waver\" for our three-month-iversary. The waver consists of two little blue boxes with a knob on the front and a hand sticking out of each one. We each had one in our apartment. When Jamin turns the knob on his box, the hand in Hailey's apartment waves, and when Hailey turns the knob on her box, the hand in Jamin's apartment waves. The knob controls the hand precisely, so we could vary the character of the wave. It's probably Jamin's most successful electronics project to date. He'd be happy to tell you how it works.", Story.text "Before we started living together, we would wave to each other all the time: when we woke up, when we got back from school or work or seeing each other, and before we went to bed. We don't need it anymore, but it was a really great way for us to stay connected and just let each other know \"I'm thinking of you.\"", Story.image "waver.jpg", Story.image "waver-internals.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1633147200000)
              , dateIsApproximate = False
              , iconImageName = "icon-the-waver.jpg"
              , aabb = { x = 1948, y = 1186, width = 249, height = 266 }
              , hitbox = [ { x = 1962, y = 1267 }, { x = 1948, y = 1191 }, { x = 2036, y = 1186 }, { x = 2197, y = 1358 }, { x = 2187, y = 1452 }, { x = 2026, y = 1442 } ]
              }
            , { title = "Thrifting"
              , description = [ Story.text "We are both pretty thrifty and love finding cheap or free things. It feels good to reduce waste while also benefitting from it. Probably our greatest victory is finding both of our bookshelves for free on the side of the road (\"Allston Christmas\"). They've served us very well. ", Story.text "We actually thrifted some things for our wedding too: the vases and the seating chart background.", Story.text "Practically every piece of furniture in our apartment came pre-owned, other than our bedroom set which is only temporary until we can get the heirloom set Jamin's grandpa made.", Story.image "board-game-shelf.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1634356800000)
              , dateIsApproximate = True
              , iconImageName = "icon-thrifting.jpg"
              , aabb = { x = 530, y = 1785, width = 181, height = 242 }
              , hitbox = [ { x = 530, y = 1785 }, { x = 701, y = 1785 }, { x = 711, y = 2027 }, { x = 530, y = 2022 } ]
              }
            , { title = "First Halloween"
              , description = [ Story.text "For our first Halloween together, the two of us and our two friends went as Cars/Clue characters. Not just characters from the hit Pixar film series Cars. Not just potential murderers from the board game/movie Clue. Each of us were dressed as two characters simultaneously, one from each of the totally related franchises. Jamin was Mater and also Colonel Mustard. Hailey was Holly Shiftwell from Cars 2 and also Professor Plum. It's pretty much impossible to dress as two very distinct characters simultaneously, but we \"did it\" (primarily by dressing in a single color shared by both characters). Everyone had little wheel cufflinks that Hailey made as well. Given that we're not big party people, we ended up eating candy and watching Clue in our costumes. ", Story.text "That first year really set the standard for our Halloweens going forward. We usually have some lofty idea about what our costumes will be, go thrifting for things that roughly (very roughly) fit the idea, and watch a movie together. Our best year was definitely dressing up as the gang from Scooby-Doo.", Story.image "first-halloween.jpg", Story.image "second-halloween.JPG", Story.image "third-halloween.JPG", Story.image "fourth-halloween.jpg", Story.image "fifth-halloween.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1635652800000)
              , dateIsApproximate = False
              , iconImageName = "icon-first-halloween.jpg"
              , aabb = { x = 1555, y = 71, width = 199, height = 316 }
              , hitbox = [ { x = 1672, y = 71 }, { x = 1738, y = 91 }, { x = 1754, y = 157 }, { x = 1698, y = 252 }, { x = 1637, y = 342 }, { x = 1555, y = 387 }, { x = 1555, y = 286 }, { x = 1577, y = 105 } ]
              }
            , { title = "Saraceno"
              , description = [ Story.text "Jamin's mom went to school in the area as well, and one of her favorite places to go for a fancy dinner was Ristorante Saraceno, an Italian restaurant in Boston's North End. We've very much adopted that tradition - it's our go-to spot to celebrate. Other than our first date, this was the first \"fancy\" restaurant we went to together. We spent most of the time talking about the plates and how bowl-shaped a plate could become before it could be classified as a bowl." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1638507600000)
              , dateIsApproximate = False
              , iconImageName = "icon-saraceno.jpg"
              , aabb = { x = 1980, y = 404, width = 219, height = 205 }
              , hitbox = [ { x = 2044, y = 609 }, { x = 2199, y = 496 }, { x = 2199, y = 404 }, { x = 2117, y = 412 }, { x = 1980, y = 516 }, { x = 1986, y = 573 } ]
              }
            , { title = "Pottery Painting"
              , description = [ Story.text "There's a paint-your-own pottery studio in Brookline called The Clayroom that we've gone to several times. It's always a good time to paint something new. It usually takes a couple hours to do a few layers on your piece but it goes by super fast.", Story.text "One year, Hailey got Jamin a throwing class for both of us at the Clayroom, which was a lot of fun. We made seven nesting bowls and got to paint them afterwards! We painted various fruits - see if you can tell who painted which ones. Jamin is very proud of himself that it's not too easy to tell which ones are worse and therefore his. These bowls actually formed the basis of our fruit-themed kitchen decor!", Story.image "pottery.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1639198800000)
              , dateIsApproximate = False
              , iconImageName = "icon-pottery-painting.jpg"
              , aabb = { x = 737, y = 1825, width = 202, height = 197 }
              , hitbox = [ { x = 769, y = 1841 }, { x = 876, y = 1825 }, { x = 918, y = 1886 }, { x = 939, y = 1914 }, { x = 904, y = 1992 }, { x = 792, y = 2022 }, { x = 737, y = 1954 } ]
              }
            , { title = "Skating"
              , description = [ Story.text "Our first winter together we went ice skating probably 5 times in various places. We don't know what it was about that first winter, but we were just having a great time ice skating. We started at the frog pond on the common until we realized there were much cheaper and less crowded alternatives. The most we've gone any other winter is twice. It's a classic early relationship activity though, and we still like going." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1639458000000)
              , dateIsApproximate = False
              , iconImageName = "icon-skating.jpg"
              , aabb = { x = 868, y = 1116, width = 226, height = 226 }
              , hitbox = [ { x = 892, y = 1124 }, { x = 995, y = 1116 }, { x = 1003, y = 1197 }, { x = 1065, y = 1241 }, { x = 1094, y = 1281 }, { x = 1078, y = 1311 }, { x = 981, y = 1340 }, { x = 868, y = 1342 } ]
              }
            , { title = "Crossword"
              , description = [ Story.text "We love playing all kinds of word games together. Outside of our daily word games (like Wordle), crosswords have become a common way for us to pass the time. On road trips, picnics, resting during hikes, etc. Hailey usually reads out the clues and whoever's around guesses at the answer. Jamin struggled to keep up at first because he wasn't raised on crosswords, but now he holds his own. ", Story.text "For our first Valentine's Day together, Jamin made Hailey a crossword about our relationship, written up on graph paper. She liked it, and now it's become an annual tradition! (You may be noticing a pattern: \"she liked it, and now it's become an annual tradition!\")" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1644728400000)
              , dateIsApproximate = False
              , iconImageName = "icon-crossword.jpg"
              , aabb = { x = 1039, y = 1299, width = 192, height = 216 }
              , hitbox = [ { x = 1082, y = 1334 }, { x = 1088, y = 1299 }, { x = 1134, y = 1307 }, { x = 1134, y = 1342 }, { x = 1231, y = 1348 }, { x = 1227, y = 1390 }, { x = 1110, y = 1515 }, { x = 1069, y = 1511 }, { x = 1039, y = 1336 } ]
              }
            , { title = "Word Games"
              , description = [ Story.text "The word games we play have changed a decent amount over the years (Connections, Minute Cryptic, Squaredle, Bracket City, Polygonle, Sedecordle, Strands, etc.). The only constant has been Wordle. At some point we started sending our results to each other every day. A couple months later, we started playing together on the weekends. Over time, we developed a tradition: Jamin chooses the first letter of the first guess, and Hailey chooses the rest of the first word. Then we continue as usual, playing the same words so our results look identical. We've kept up the tradition of sending our results to each other every day (even though they're mostly the same now).", Story.text "One year for Hailey's birthday, Jamin got her an app that keeps track of which days we have the same results. Well actually, it tracks three scenarios, and plots them on a calendar. Gray means that we didn't send the Wordle results to each other (meaning we either missed that day or forgot to send what we got). Yellow means that we sent the results to each other but they don't match. Green means we sent the results to each other and they do match (so we were probably together). It's a fun display, because you can see the very start of us sending Wordle to each other is pretty much all yellows, then it becomes green on the weekends, and then it becomes green all the time once we moved in together!", Story.text "On April 11th, 2024, Wordle 1,027, we got the Wordle in 1 guess! We constructed the correct word: \"louse\" on the first guess, which felt exceptionally special because we choose a different starting word every day.", Story.image "wordle-texts.png", Story.image "wordle-yellow.png", Story.image "wordle-in-one.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1644987600000)
              , dateIsApproximate = True
              , iconImageName = "icon-word-games.jpg"
              , aabb = { x = 675, y = 1178, width = 191, height = 188 }
              , hitbox = [ { x = 675, y = 1184 }, { x = 860, y = 1178 }, { x = 866, y = 1360 }, { x = 685, y = 1366 } ]
              }
            , { title = "Sharing Books"
              , description = [ Story.text "We both love to read, so obviously we want to share what we're reading with each other. Hailey likes a lot of thrillers and mysteries, while Jamin likes more sci-fi and fantasy. We've both read some of each other's favorite books. The thrillers are usually a bit too intense for Jamin, so Hailey usually ends up telling him about what she's reading, as she reads it. The thrillers definitely make for exciting stories! Hailey has read the entire Mistborn series, and all of the Stormlight Archive series as well, which are some of Jamin's favorites. If you've heard of them, you know they're quite a commitment!", Story.text "We also sometimes read out loud for each other. We read a lot of short stories this way: many of Isaac Asimov's short stories, all of Ted Chiang's short stories, and Flowers for Algernon." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1646110800000)
              , dateIsApproximate = True
              , iconImageName = "icon-sharing-books.jpg"
              , aabb = { x = 1867, y = 204, width = 244, height = 270 }
              , hitbox = [ { x = 2002, y = 474 }, { x = 2111, y = 355 }, { x = 2109, y = 267 }, { x = 2024, y = 234 }, { x = 1976, y = 204 }, { x = 1917, y = 255 }, { x = 1873, y = 295 }, { x = 1867, y = 355 }, { x = 1897, y = 396 }, { x = 1958, y = 428 } ]
              }
            , { title = "Musical Theater"
              , description = [ Story.text "Jamin comes from a family of actors and theater-goers. Hailey loved listening to showtunes in high school and always jumped at the chance to see a show. We don't go super often, but we always enjoy it when we do. We've seen a variety of shows, including The Book of Mormon, Les Miserables, Mamma Mia, Shucked, The Music Man, and the Blue Man Group.", Story.image "citizens-opera-house.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1647061200000)
              , dateIsApproximate = True
              , iconImageName = "icon-musical-theater.jpg"
              , aabb = { x = 175, y = 1624, width = 202, height = 209 }
              , hitbox = [ { x = 179, y = 1624 }, { x = 356, y = 1628 }, { x = 377, y = 1742 }, { x = 288, y = 1833 }, { x = 246, y = 1825 }, { x = 175, y = 1749 } ]
              }
            , { title = "First Anniversary"
              , description = [ Story.text "On our first anniversary, we surprised each other with gifts. Well, actually, we surprised each other more than expected - we got each other the same gift! We independently thought to write down things we love about each other on little slips of paper that we put into glass jars. It was shocking and exciting when we realized we had had the exact same thought about what to do for our first anniversary. We didn't talk about whether we would do the same thing for our second anniversary, but we did, of course. Since then, we have had a tradition of adding more reasons we love each other to the jars on our anniversaries. Each year we also take out and read all the slips from previous years. It's really wonderful to see how our love for each other has changed and grown over the years. We now have several hundred!", Story.text "Hailey took a slightly different approach for our second anniversary and wrote her \"I love yous\" on a deck of cards. For our third anniversary, she combined years 1 - 3 with a container she made, and now she just adds to the big jar like Jamin does.", Story.image "jars.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1656734400000)
              , dateIsApproximate = False
              , iconImageName = "icon-first-anniversary.jpg"
              , aabb = { x = 1803, y = 424, width = 157, height = 147 }
              , hitbox = [ { x = 1960, y = 555 }, { x = 1956, y = 452 }, { x = 1934, y = 424 }, { x = 1803, y = 436 }, { x = 1807, y = 571 } ]
              }
            , { title = "First Vacation"
              , description = [ Story.text "We celebrated our first anniversary by taking a vacation to Provincetown (a.k.a. P-town), which is at the very tip of Cape Cod. It was a great first vacation together. We got a beachfront hotel a little bit out of town and we did lots of walking around and checking out little shops. The library was a highlight - there's a whole ship in there! We went for a walk in a small park as well, and Hailey found a stick with two arms that she calls her man. Jamin is very jealous of the stick. We've been back once and had a similarly fun time.", Story.image "her-man.jpg", Story.image "big-blue-chair.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1657252800000)
              , dateIsApproximate = False
              , iconImageName = "icon-first-vacation.jpg"
              , aabb = { x = 1122, y = 403, width = 219, height = 242 }
              , hitbox = [ { x = 1122, y = 520 }, { x = 1253, y = 403 }, { x = 1319, y = 431 }, { x = 1341, y = 645 }, { x = 1279, y = 633 }, { x = 1130, y = 608 } ]
              }
            , { title = "Swimming"
              , description = [ Story.text "One of our favorite things to do on vacation is swim together. When we have a choice, we almost always book a hotel with a pool (if we won't have other bodies of water available). Hailey was on swim team in high school so it's somewhat nostalgic for her. Jamin likes to splash around and lose races to Hailey. ", Story.text "We also like to do what we call \"the torpedo\" where Hailey floats on her back with her arms above her head like a torpedo, and Jamin pushes her as hard as he can by her feet. She goes pretty far!" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1657339200000)
              , dateIsApproximate = True
              , iconImageName = "icon-swimming.jpg"
              , aabb = { x = 933, y = 776, width = 290, height = 145 }
              , hitbox = [ { x = 933, y = 890 }, { x = 1082, y = 890 }, { x = 1150, y = 921 }, { x = 1223, y = 882 }, { x = 1182, y = 812 }, { x = 1061, y = 776 }, { x = 933, y = 776 } ]
              }
            , { title = "Video Games"
              , description = [ Story.text "Most of our current interests were also interests at least one of us had as a kid. Video games are perhaps the only exception. They're something we mostly discovered together. We mostly play couch co-op games for that reason, where both of us are playing together on the same laptop. We also sometimes play single player games together - either puzzle games where we can think through it together or games where we can split the controls (e.g. we played Portal with Jamin moving and Hailey placing portals).", Story.text "Some of our favorites include It Takes Two, Unravel 2, Split Fiction, Portal, Baba Is You, Operation Tango, and Bokura." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1661227200000)
              , dateIsApproximate = False
              , iconImageName = "icon-video-games.jpg"
              , aabb = { x = 1470, y = 1092, width = 234, height = 280 }
              , hitbox = [ { x = 1470, y = 1283 }, { x = 1535, y = 1092 }, { x = 1599, y = 1092 }, { x = 1607, y = 1122 }, { x = 1617, y = 1193 }, { x = 1698, y = 1253 }, { x = 1704, y = 1295 }, { x = 1593, y = 1372 }, { x = 1480, y = 1319 } ]
              }
            , { title = "Movie Night"
              , description = [ Story.text "Friday night is movie night! One of our Halloween traditions is to watch a movie related to our costumes. For our first Halloween together, we borrowed a friend's projector, but for our second Halloween together we decided to buy one ourselves. It turned out to be a great purchase in the long run - we've been watching movies with the projector pretty much every Friday since we moved in together. Sometimes we watch on a laptop, but when we want the big-screen feeling, we just point the projector at our blank wall and settle in. We haven't felt the need to get a TV yet, but probably will in the future.", Story.text "We watch all kinds of movies together. Jamin typically likes comedies and Hailey likes more intense movies like thrillers, but neither of us are too picky. Some of our favorites to watch together are Clue, The Pink Panther, Knives Out movies, and any of the Spider-Man movies. Let us know if you have any recommendations!", Story.image "projector.jpg", Story.image "projected.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1666497600000)
              , dateIsApproximate = True
              , iconImageName = "icon-movie-night.jpg"
              , aabb = { x = 691, y = 584, width = 272, height = 190 }
              , hitbox = [ { x = 691, y = 681 }, { x = 806, y = 677 }, { x = 947, y = 584 }, { x = 963, y = 774 }, { x = 816, y = 727 }, { x = 783, y = 737 }, { x = 695, y = 749 } ]
              }
            , { title = "Hello Fresh"
              , description = [ Story.text "For Christmas one year, Hailey's parents got her a Hello Fresh subscription. It was very nice not to have to make the 20 minute trek to Star Market for groceries every week for a semester. Jamin would usually come over for dinner one night during the week and we would cook together. When we moved in together, Hailey ended the subscription, but hung onto all the recipes that we liked. At that point, they were all pretty straightforward recipes that we knew we liked, so they were all great candidates for future meals! ", Story.text "Another great source of recipes was Hailey's bridal shower, where everyone brought in some of their favorite recipes. We've been trying a new one every week, and we still haven't even gotten through all of them!", Story.image "recipes.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1673672400000)
              , dateIsApproximate = False
              , iconImageName = "icon-hello-fresh.jpg"
              , aabb = { x = 771, y = 1366, width = 234, height = 207 }
              , hitbox = [ { x = 771, y = 1386 }, { x = 878, y = 1366 }, { x = 987, y = 1436 }, { x = 1005, y = 1539 }, { x = 910, y = 1569 }, { x = 864, y = 1573 }, { x = 781, y = 1527 } ]
              }
            , { title = "Spreadsheets"
              , description = [ Story.text "Spreadsheets! All of the text for this project was originally placed in a spreadsheet. We use spreadsheets (Google Sheets specifically) to manage recipes, groceries, gifts, budgeting, pizza rating, trips, and appointments. Oh, and you should see our wedding planning spreadsheet. It has 15 tabs and counting, at the time of writing. We both love the easy automation and organization that comes with spreadsheets.", Story.text "For finances specifically, Jamin made an app for he and Hailey to use (called Spendwise), where we can input our monthly earnings and expenses.", Story.text "Honorable mentions to assist with organization: Listonic for lists (movies, groceries, Costco, wishlists, packing, etc.), Splitwise for sharing expenses, and Google Calendar for scheduling." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1681704000000)
              , dateIsApproximate = True
              , iconImageName = "icon-spreadsheets.jpg"
              , aabb = { x = 1899, y = 592, width = 159, height = 178 }
              , hitbox = [ { x = 1899, y = 600 }, { x = 2010, y = 592 }, { x = 2036, y = 616 }, { x = 2058, y = 770 }, { x = 1907, y = 767 } ]
              }
            , { title = "Moving in Together"
              , description = [ Story.text "After graduation, we moved in together! We decided the previous November that we wanted to live together, and shortly afterward decided to live with each of our previous roommates, Aidan and Sparrow. Together, we are JASH (Jamin, Aidan, Sparrow, Hailey). We assigned ourselves specific colors to uniformly apply to things around the apartment, especially board game player colors. Jamin is blue, Aidan is red, Sparrow is purple (or yellow if purple is unavailable), and Hailey is green.", Story.text "It was so much fun living together, and we're sorry that it had to end. Thanks to weekly check-ins, eating together, and each pair having been roommates beforehand, we are still very good friends.", Story.image "room-for-jesus.jpg", Story.image "jash-ice-cream.jpg", Story.image "jash-painted.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1682308800000)
              , dateIsApproximate = False
              , iconImageName = "icon-moving-in-together.jpg"
              , aabb = { x = 769, y = 1577, width = 212, height = 252 }
              , hitbox = [ { x = 769, y = 1744 }, { x = 876, y = 1581 }, { x = 924, y = 1577 }, { x = 981, y = 1634 }, { x = 929, y = 1706 }, { x = 828, y = 1829 }, { x = 773, y = 1817 } ]
              }
            , { title = "Daily Routine"
              , description = [ Story.text "Once we lived together, we established a pretty firm daily routine. Or maybe most people would say \"very firm.\" We've been doing the same thing for a couple years now. At 5:45, we wake up and head to the gym. Insert gym routine here - see if you can guess which icon it is. At 6:10 or so, Hailey heads back to shower, and Jamin follows about 10 minutes later. We get dressed and have breakfast, which has been consistently cereal, but Jamin recently shifted from Honey Bunches of Oats to Cheerios (greatly offending Hailey). We usually finish eating around 6:45, and then we brush our teeth and head to work. Jamin hops on the red line and Hailey drives. We both get into work around 7:30. ", Story.text "Luckily, both of our jobs allow us to work a shifted schedule, so we avoid traffic and get home before it's dark out. Jamin usually gets home first (around 4:15) and calls Hailey, and we talk about how our days went. Once Hailey gets home, we chillax for a little bit and then start making dinner. Depending on how hungry we are, we start somewhere between 5 and 6. We're usually cleaned up by 7, and then we do whatever we want (play games, watch TV or TikTok, Legos, etc.) until we go to bed around 9:45! ", Story.text "This is a typical day when we don't have plans, which only ends up being one or two nights a week between getting dinner with friends, pickleball, and date night. ", Story.text "Our other routine components include having date night/movie night on Friday, playing pickleball and board games Saturday morning/early afternoon, and getting our chores and errands done on Sunday. We also have some regularly scheduled dinners with our friends." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1682308800000)
              , dateIsApproximate = True
              , iconImageName = "icon-daily-routine.jpg"
              , aabb = { x = 1625, y = 1722, width = 194, height = 149 }
              , hitbox = [ { x = 1625, y = 1742 }, { x = 1760, y = 1751 }, { x = 1803, y = 1722 }, { x = 1819, y = 1738 }, { x = 1768, y = 1841 }, { x = 1702, y = 1871 }, { x = 1631, y = 1843 } ]
              }
            , { title = "Porter Jamin"
              , description = [ Story.text "Jamin likes to feel useful and Hailey is more of a leader than him when it comes to us being out of our apartment. So naturally, Jamin carries things. Library books, purses, shopping bags, etc. Hailey will often ask him to hold something briefly while she ties her shoes or something, but he won't give the bag back when she's done. Hailey secretly likes this." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1682308800000)
              , dateIsApproximate = True
              , iconImageName = "icon-porter-jamin.jpg"
              , aabb = { x = 2010, y = 584, width = 222, height = 367 }
              , hitbox = [ { x = 2069, y = 951 }, { x = 2052, y = 856 }, { x = 2020, y = 838 }, { x = 2010, y = 786 }, { x = 2075, y = 770 }, { x = 2089, y = 641 }, { x = 2179, y = 584 }, { x = 2232, y = 687 }, { x = 2230, y = 935 } ]
              }
            , { title = "Couch Potatoes"
              , description = [ Story.text "We are couch potatoes. Yeah, we like to plan activities for ourselves and see people, but when it comes down to it, we are always happy just watching TV, a movie, or TikTok in each other's company. When we watch TikTok, we're usually watching on Hailey's phone and cuddling. When we're watching something else, Hailey is usually doing some fiber art (knitting, crocheting, embroidering, etc.) and Jamin is engrossed in whatever we're watching.", Story.text "When we lived in Cambridge, our couch was called Mega Couch. Hailey's parents very kindly gave us their old six-piece sectional couch, which we arranged in a 2x3 configuration, like one very deep couch. It has hosted many of our friends and family sleeping over, and it comfortably fit the four of us laying down for movie night. Our couch is now in a more triangular formation because it fits the space better. It's a very comfortable couch, and we've fallen asleep on it many times. " ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1683172800000)
              , dateIsApproximate = True
              , iconImageName = "icon-couch-potatoes.jpg"
              , aabb = { x = 892, y = 439, width = 242, height = 135 }
              , hitbox = [ { x = 979, y = 469 }, { x = 1011, y = 441 }, { x = 1051, y = 441 }, { x = 1110, y = 439 }, { x = 1134, y = 459 }, { x = 1126, y = 502 }, { x = 1059, y = 550 }, { x = 971, y = 572 }, { x = 924, y = 574 }, { x = 892, y = 500 } ]
              }
            , { title = "Graduation"
              , description = [ Story.text "We both graduated from Northeastern just a few days after we got the keys to our new apartment in Cambridge! We finished classes, attended some senior events, walked for the College of Engineering graduation, and attended the full university graduation at Fenway Park. It was a lot of fun to have both of our families there - it was actually the first time they met in person. We got plenty of pictures and had a celebratory dinner at Saraceno.", Story.text "We both had jobs lined up (Hailey's started literally the day after graduation weekend), so it was a quick transition into working life!", Story.image "fenway-park.JPEG" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1683432000000)
              , dateIsApproximate = False
              , iconImageName = "icon-graduation.jpg"
              , aabb = { x = 1847, y = 1640, width = 250, height = 181 }
              , hitbox = [ { x = 1847, y = 1710 }, { x = 1970, y = 1640 }, { x = 2097, y = 1736 }, { x = 2069, y = 1821 }, { x = 1893, y = 1813 } ]
              }
            , { title = "After-work Recap"
              , description = [ Story.text "We established an after-work call routine pretty soon after Hailey started working. Jamin usually gets home before Hailey, so Hailey calls from the car so we can talk about our days. For some reason she's much more talkative in the car than when she gets home, so it works out well. We usually talk about what we did at work, what we had for lunch, how our commutes were, etc. It's mundane, but it's a nice way to move from the work day into the rest of the day together. When we've talked about everything, Jamin guesses when Hailey is going to be home, and she tells him whether is guess is too early or too late until he guesses her exact ETA." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1683604800000)
              , dateIsApproximate = False
              , iconImageName = "icon-after-work-recap.jpg"
              , aabb = { x = 731, y = 254, width = 248, height = 217 }
              , hitbox = [ { x = 737, y = 270 }, { x = 868, y = 254 }, { x = 979, y = 268 }, { x = 967, y = 463 }, { x = 731, y = 471 } ]
              }
            , { title = "Graduation Travels"
              , description = [ Story.text "The summer after we graduated, we took a trip to Europe, just the two of us. We'd both traveled internationally with our families before, but never without them, and never with each other. We went to Bergen and Oslo in Norway, and then to Amsterdam. We took a day trip to Paris from Amsterdam as well. We had lots of fun activities planned. Here are some of the highlights:", Story.text "In Bergen, we took a funicular up to the peak of one of the seven mountains that surround the city. There were some scultures, a cafe, some hiking trails, and goats up there! Then we got ice cream and hiked our way down. We stopped at the Leprosy museum for some light learning.", Story.text "Our favorite day of the trip is the day we did a full-day fjord adventure. We started by taking the train a couple hours out of Bergen. Then we hopped on a couple of mountain bikes and biked (mostly downhill) about 12 miles to a small town in the mountains. We stopped there for a bit, then we got a motorboat tour of the fjords and their waterfalls. It was breathtaking. One cool fact we learned is that the water in the fjords is about as deep as the surrounding mountains are tall. After the tour, we went kayaking on the fjords. We saw lots of sheep and goats, and one mother and her babies even appraoched us! After that was a bus back to the train back to Bergen.", Story.text "We didn't spend a lot of time in Oslo, but it was our anniversary, so we went for our classic Indian meal. We also went on a hop-on hop-off bus, which ended up being a nice quick way to see the city.", Story.text "In Amsterdam, our favorite activities were the Van Gogh museum and the canal tour. And eating stroopwafel. We went to several other museums and to a small town with very old windmills as well - all of which were quite fun!", Story.text "We were pretty ambitious in planning the trip, and booked ourselves train tickets for a day trip to Paris. The train was 3.5 hours each way, which left us only about 8 hours to see all of Paris! But we hit the big ones successfully! We went to the Louvre, the Musee d'Orsay, and the Eiffel tower, and we didn't miss our train home. It was a busy day, but it was fun to see it all!", Story.text "It was a ten day trip overall, and it was an absolute blast! It was a great way to celebrate our graduation, and it was a great first big trip together.", Story.text "", Story.image "bergen-bridge.jpg", Story.image "biking.jpg", Story.image "fjords.jpg", Story.image "amsterdam.jpg", Story.image "mona-lisa.jpg", Story.image "eiffel-tower.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1687838400000)
              , dateIsApproximate = False
              , iconImageName = "icon-graduation-travels.jpg"
              , aabb = { x = 1134, y = 62, width = 215, height = 301 }
              , hitbox = [ { x = 1134, y = 222 }, { x = 1164, y = 62 }, { x = 1343, y = 68 }, { x = 1349, y = 214 }, { x = 1341, y = 363 }, { x = 1259, y = 357 }, { x = 1221, y = 228 } ]
              }
            , { title = "Old Souls"
              , description = [ Story.text "We act a little bit like grandparents. We eat dinner pretty early, we go to bed pretty early, we don't like loud restaurants, we like setting up regularly occurring times to see people, we like listening to older music, we do crossword puzzles together, we like cooking for people, and Hailey knits. As far as we're concerned, this is the life! Maybe we'll change our minds later, but we'll take that as it comes." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1689134400000)
              , dateIsApproximate = True
              , iconImageName = "icon-old-souls.jpg"
              , aabb = { x = 540, y = 1382, width = 199, height = 219 }
              , hitbox = [ { x = 540, y = 1400 }, { x = 723, y = 1382 }, { x = 739, y = 1585 }, { x = 552, y = 1601 } ]
              }
            , { title = "Teatime"
              , description = [ Story.text "Teatime has become a staple for Hailey, and for Jamin on weekends (he doesn't like tea very much though, so he usually has Sparkling Ice to feel included). Hailey likes a variety of teas, but she usually has black tea, sometimes with milk and sugar, or she has mint tea. For Hailey, teatime is a nice time to pause during the day and get warmed up, and maybe get caffeinated. She usually has it in the early afternoon at work, and later in the afternoon with Jamin on the weekends.", Story.text "Hailey's mom has always been a big tea drinker, but Hailey only started drinking tea regularly during her weekly dinners with her friends. Now she'll rarely turn down an offered cup of tea." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1693540800000)
              , dateIsApproximate = True
              , iconImageName = "icon-teatime.jpg"
              , aabb = { x = 1013, y = 536, width = 220, height = 234 }
              , hitbox = [ { x = 1112, y = 536 }, { x = 1063, y = 558 }, { x = 1013, y = 745 }, { x = 1033, y = 767 }, { x = 1116, y = 770 }, { x = 1215, y = 753 }, { x = 1233, y = 721 }, { x = 1221, y = 651 }, { x = 1128, y = 624 } ]
              }
            , { title = "Costco"
              , description = [ Story.text "Hailey and her family loves Costco, and introduced Jamin to its endless wonder. We go to Costco about once a month around dinnertime. Hailey gets a hotdog and Jamin gets pizza, and we split a vanilla sundae with strawberries for dessert. Talk about a well-rounded meal! After we eat, we stock up on some bulk items and some prepared/frozen meals. We typically walk down every aisle and get samples. It's a fun store to walk around - they've really got quite the variety." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1699070400000)
              , dateIsApproximate = True
              , iconImageName = "icon-costco.jpg"
              , aabb = { x = 1946, y = 1458, width = 270, height = 190 }
              , hitbox = [ { x = 1946, y = 1557 }, { x = 2028, y = 1505 }, { x = 2203, y = 1458 }, { x = 2216, y = 1503 }, { x = 2209, y = 1579 }, { x = 2133, y = 1648 }, { x = 1988, y = 1642 } ]
              }
            , { title = "Legos"
              , description = [ Story.text "We love to put together Lego sets, separately and together. We're both very much rule-followers, so we think carefully following the instructions scratches an itch because our lives don't have very many rules since we're no longer in school. When we have Legos we want to do, we'll usually spend some time on the weekend listening to an audiobook and putting them together. It's one of our favorite parallel play activities.", Story.text "Hailey likes the nature sets - she has several floral ones, the bonsai tree, and insects, among others. Jamin usually goes for the 3-in-1 sets because he likes the process of building a lot more than the end results. He also likes the space-themed sets a lot.", Story.image "legos.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1701406800000)
              , dateIsApproximate = True
              , iconImageName = "icon-legos.jpg"
              , aabb = { x = 1958, y = 1819, width = 237, height = 246 }
              , hitbox = [ { x = 1958, y = 1944 }, { x = 2085, y = 1819 }, { x = 2195, y = 1938 }, { x = 2095, y = 2065 } ]
              }
            , { title = "Morning Workouts"
              , description = [ Story.text "We work out together pretty much every workday. We've been lucky enough to have a gym in both apartments we've lived in together. We head to the gym straightaway when we wake up so we can't decide otherwise. Hailey usually runs on the elliptical machine for 15 minutes and then heads up to shower, and Jamin alternates between lifting weights and running on the elliptical for about 25 minutes." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1704690000000)
              , dateIsApproximate = True
              , iconImageName = "icon-morning-workouts.jpg"
              , aabb = { x = 1682, y = 1189, width = 282, height = 193 }
              , hitbox = [ { x = 1682, y = 1317 }, { x = 1768, y = 1287 }, { x = 1803, y = 1189 }, { x = 1833, y = 1275 }, { x = 1964, y = 1334 }, { x = 1819, y = 1382 }, { x = 1686, y = 1344 } ]
              }
            , { title = "Photography"
              , description = [ Story.text "Neither Jamin nor Hailey have a particular interest in taking photos, but our families really like it when we do. In combination,  those two facts have led us to primarily taking selfies or goofy photos. Jamin (a.k.a. \"Long-Arms McGee\") typically takes the selfies, which means that a lot of our pictures cut off at his right shoulder (see our Europe trip pictures in particular).", Story.text "Some of Jamin's favorite photos to take are of Hailey pumping gas. She's almost always the one to fill up the tank (which is very nice of her). While she's doing so, Jamin takes some action shots of her wearing some prize-winning expressions.", Story.image "gas-1.jpg", Story.image "gas-2.jpg", Story.image "gas-3.jpg", Story.image "gas-4.jpg", Story.image "gas-5.jpg", Story.image "gas-6.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1711080000000)
              , dateIsApproximate = True
              , iconImageName = "icon-photography.jpg"
              , aabb = { x = 675, y = 490, width = 189, height = 171 }
              , hitbox = [ { x = 675, y = 490 }, { x = 848, y = 494 }, { x = 864, y = 620 }, { x = 826, y = 651 }, { x = 679, y = 661 } ]
              }
            , { title = "Toki Pona"
              , description = [ Story.text "Toki pona li toki pi lili. Mi mute li kama sona kepeken pu. Mi mute li wile toki kepeken toki pona.", Story.text "In toki pona, this means roughly \"Toki pona is a minimalist language. We started learning it using the official toki pona book. We want to be able to speak in toki pona.\" ", Story.text "Toki pona is a constructed language that we tried to learn together. We learned all 120 words, as well as the grammar, but we didn't really use it enough for it to stick, unfortunately. It's generally difficult to form coherent sentences in because there's so few words, but we had a lot of fun learning about it." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1713585600000)
              , dateIsApproximate = False
              , iconImageName = "icon-toki-pona.jpg"
              , aabb = { x = 647, y = 1612, width = 132, height = 177 }
              , hitbox = [ { x = 647, y = 1612 }, { x = 779, y = 1612 }, { x = 763, y = 1789 }, { x = 707, y = 1779 }, { x = 655, y = 1777 } ]
              }
            , { title = "Buster"
              , description = [ Story.text "We call each other Buster. As in Hailey calls Jamin Buster and Jamin also calls Hailey Buster. It's a bit weird. It's also completely unambiguous because we're the only people calling each other Buster. Earlier in our relationship, we tried assigning nicknames but nothing really felt natural or stuck. Then Hailey called Jamin Buster a few times as a joke, but it really stuck. And he liked it so much he started calling her Buster too! We joked that when we got married we would become Mr. and Mrs. Buster Panzenberg." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1714536000000)
              , dateIsApproximate = True
              , iconImageName = "icon-buster.jpg"
              , aabb = { x = 1583, y = 590, width = 314, height = 184 }
              , hitbox = [ { x = 1583, y = 774 }, { x = 1639, y = 649 }, { x = 1726, y = 608 }, { x = 1841, y = 590 }, { x = 1897, y = 659 }, { x = 1891, y = 705 }, { x = 1849, y = 735 } ]
              }
            , { title = "Going Camping"
              , description = [ Story.text "Both Jamin and Hailey grew up going camping, and we were both in scouting programs, so we've decided to carry that tradition into our relationship. We definitely take it on easy mode (car camping with pretty straightforward meals), but it's a lot of fun just to get away for a weekend! We usually do some light hiking, some swimming, some card playing, and a lot of reading. Harold Parker State Forest has become our go-to spot.", Story.image "camping.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1715918400000)
              , dateIsApproximate = False
              , iconImageName = "icon-going-camping.jpg"
              , aabb = { x = 38, y = 1033, width = 226, height = 222 }
              , hitbox = [ { x = 54, y = 1108 }, { x = 177, y = 1033 }, { x = 264, y = 1156 }, { x = 167, y = 1251 }, { x = 38, y = 1255 } ]
              }
            , { title = "Functional Programming"
              , description = [ Story.text "Functional programming is one of Jamin's biggest passions. He'd be happy to talk your ear off about it anytime. He shared this with Hailey early on in the form of lambda calculus. She was more interested than most people, given her love of math. ", Story.text "For our third anniversary, Jamin asked Hailey if he could teach her some functional programming. As a gift, she said he could teach her functional programming for four one-hour lessons. We started by making Wordle in Elm, and she ended up really liking it! We continued for probably ten additional lessons, learning all about functional programming principles via Elm and Purescript. It was a great gift for Jamin, and Hailey didn't regret it!" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1719892800000)
              , dateIsApproximate = False
              , iconImageName = "icon-functional-programming.jpg"
              , aabb = { x = 1758, y = 1819, width = 188, height = 230 }
              , hitbox = [ { x = 1758, y = 1892 }, { x = 1770, y = 1849 }, { x = 1841, y = 1819 }, { x = 1940, y = 1970 }, { x = 1946, y = 2049 }, { x = 1774, y = 2049 } ]
              }
            , { title = "Pickleball"
              , description = [ Story.text "Hailey's parents introduced us to pickleball. It's the first sport Jamin has had any particular interest in. We play together with some of our friends most Saturdays, and we have been for a couple years. Since moving to Quincy, Jamin has also started playing pickleball put on by Quincy recreation, and that's every week as well. Jamin will never pass up an opportunity to play pickleball! Ask Hailey about her famous reverse backhand swing." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1728100800000)
              , dateIsApproximate = True
              , iconImageName = "icon-pickleball.jpg"
              , aabb = { x = 1674, y = 251, width = 145, height = 265 }
              , hitbox = [ { x = 1780, y = 516 }, { x = 1778, y = 426 }, { x = 1819, y = 388 }, { x = 1803, y = 275 }, { x = 1787, y = 251 }, { x = 1704, y = 255 }, { x = 1680, y = 295 }, { x = 1674, y = 400 }, { x = 1724, y = 444 }, { x = 1754, y = 516 } ]
              }
            , { title = "Work Trip Apart"
              , description = [ Story.text "Hailey has to travel as part of her work for Instron, to install the systems she designs at customer sites. Sometimes Jamin goes with her, but sometimes it's not feasible, with his own work. Hailey's longest trip so far was to Shenyang, China, for 12 days. We miss each other a lot when she's away. For this particular trip, Hailey decided to surprise Jamin by hiding 100 little plastic ducks all over the apartment. Whenever Jamin was missing Hailey, he could go hunting for ducks! The ducks were hidden all over the place: there was one in his shoe, there was one in a board game we don't often play, there was one in every pair of his socks, there was one in his jacket pocket (he decided to leave that one in there) - truly everywhere. ", Story.text "Jamin found about 70 ducks while Hailey was gone. We lost track of how many we've found, but it's still less than 90. We've since moved, so there are either ducks well hidden in our old apartment or hidden deep in our belongings.", Story.image "ducks.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1735966800000)
              , dateIsApproximate = False
              , iconImageName = "icon-work-trip-apart.jpg"
              , aabb = { x = 1106, y = 931, width = 165, height = 133 }
              , hitbox = [ { x = 1106, y = 945 }, { x = 1239, y = 931 }, { x = 1271, y = 983 }, { x = 1253, y = 1064 }, { x = 1110, y = 1064 } ]
              }
            , { title = "Pancakes"
              , description = [ Story.text "Growing up, Jamin's family made pancakes (or Belgian waffles) once on most weekends. When Jamin's mom got us a griddle pan, we started doing the same! We make King Arthur's Simply Perfect Pancakes from scratch each week, and we add five chocolate chips to each pancake before flipping them. That particular tradition came from when Jamin and his sister used to fight over who got which pancakes, but it really stuck.", Story.text "Pancakes is one of our favorite traditions and we hope to continue it when we have kids." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1737781200000)
              , dateIsApproximate = True
              , iconImageName = "icon-pancakes.jpg"
              , aabb = { x = 415, y = 1620, width = 228, height = 155 }
              , hitbox = [ { x = 435, y = 1624 }, { x = 415, y = 1767 }, { x = 538, y = 1775 }, { x = 643, y = 1769 }, { x = 618, y = 1620 } ]
              }
            , { title = "New Library"
              , description = [ Story.text "When we toured our current apartment in Quincy, we had some time to spare in the area. We ended up at the Thomas Crane Public Library. It's a beautiful library about a block away from our apartment. We looked around, then sat and talked about our thoughts on moving to Quincy. Perhaps surprisingly, the library itself played a part in our decision, being so close and so big.", Story.text "We love the library. We mostly get books digitally now that we both have e-readers, but we constantly check out movies, TV shows, and board games. For a long time, we didn't have any streaming services and just checked out new things to watch from the library each week. The board games were a pleasant surprise - they have a good-size collection and it's really nice to be able to try games before buying the ones we really like for ourselves." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1741237200000)
              , dateIsApproximate = False
              , iconImageName = "icon-new-library.jpg"
              , aabb = { x = 665, y = 937, width = 227, height = 231 }
              , hitbox = [ { x = 777, y = 937 }, { x = 854, y = 961 }, { x = 892, y = 1031 }, { x = 878, y = 1102 }, { x = 828, y = 1150 }, { x = 777, y = 1168 }, { x = 707, y = 1144 }, { x = 667, y = 1104 }, { x = 665, y = 1009 }, { x = 701, y = 961 } ]
              }
            , { title = "Engaged! (Part 1)"
              , description = [ Story.text "Our engagement takes a little bit of explaining and a lot of describing, so strap in!", Story.text "Our decision to marry each other came to us gradually. We both knew that we loved each other very much, that we had built a great relationship for each other and for ourselves, and that we were emotionally ready to forever unify our lives. As much as you can be certain about these things, we are.", Story.text "As many couples do, we lightly discussed marriage early on. After we had been living together for a while and growing closer and more comfortable, it was natural to talk about when exactly we wanted to get married, and what a proposal would look like. As is our custom, we made a list of things that we wanted to discuss before our proposal, and before getting married. It was a long list that we worked through over a few months including what marriage means to us, where we might live, housework, last names, finances, worst-case scenarios, kids, and many more.", Story.text "One of the things on our list was what we wanted \"the proposal\" to look like. We always try to do things together and fairly, without trying to conform to specific gender roles, so the natural path was for each of us to propose to the other. There are some different ways to do this, but we settled on proposing to each other on the same day, one after the other. So \"Engaged (Part 1)\" is Jamin's proposal to Hailey in the morning, and part 2 is her proposal to him in the afternoon.", Story.text "Jamin started by fake proposing to Hailey in the living room. The ring box, however, did not contain a ring, but contained a tiny envelope in the style of Taskmaster, one of our favorite TV shows. The tiny envelope described the general idea of a series of puzzles, and had a list of dates on the back. ", Story.text "The dates correspond to icons on a gift Hailey got for Jamin, that had an icon per date we went on in 2021, arranged on a map of Boston. When you play connect the dots with the icons corresponding to the dates, you get the digits 2, 1, 4, and 3.", Story.text "On the back of a puzzle Jamin got her, he wrote the words ____th day of our relationship, and drew icons telling her to check her voicemail. Her voicemail contained a message of Jamin speaking Toki Pona, describing how to rearrange the digits from the previous clue.", Story.text "The 1,324th day of our relationship was Valentine's Day of 2025, the day that Jamin gets Hailey a crossword every year.  With the crosswords, he had placed two pieces of paper with some tiny square cutouts that, when overlaid on the crosswords for 2024 and 2025, spelled \"ace\" and \"hearts.\"", Story.text "Hailey checked the most significant deck of cards to our relationship, which is the cards she got Jamin for our second anniversary with the things she loves about him. The ace of hearts referenced the Waver Jamin had made for her, which so happened to be sitting out, attached to a piece of paper with a bunch of hands on it.", Story.text "Jamin had reprogrammed the Waver such that, when the Waver's hand was lined up with each of the outlines on the paper in sequence, it started blinking Morse code. The Morse code spelled out \"last 30 days of wordle.\" ", Story.text "Jamin picks which letter we start our first guess with every day, and for the last 30 days, he had been spelling out the following: \"jamin eisenberg github io proposal.\" The Waver paper also had this clue on the back \"5-9.6.2/8.\" In combination, those yield a URL to a website Jamin had created (he took it down, no need to check).", Story.text "The website opened with a picture of a steering wheel, so Hailey decided we should go to the car. There, she found an NFC tag that Jamin had placed (a little sticker you can scan with your phone). When she scanned it, the picture changed to Jamin sitting outside Ruggles station, where he sat to wait for her to come home from work every so often. It continued this way, with each picture indicating a place around Northeastern that was significant to us, and an NFC tag for her to scan to move to the next one. Thanks Sparrow for placing all those tags (and also playtesting and talking through how the entire proposal was going to work)! ", Story.text "From Ruggles, we went to Snell Library, where Jamin first decided he loved Hailey. Then to East Village where we probably first saw each other because we had a class together. Then to the bench where we first met. Then outside her apartment where we had our first kiss. Then inside her old apartment (Jamin paid off the current residents to put an NFC tag in their apartment and let us in to the building on the day). Then to the Charles River Esplanade where they had the picnic on the day they first met.", Story.text "On the esplanade, Jamin gave a short speech and proposed with a ring. She said yes! It was a dreary day, but we were so happy that it didn't matter. Neither of us could stop smiling.", Story.text "After the proposal, we headed back to Northeastern for an indoor picnic (because of the rain), which Aidan had kindly set up for us.", Story.image "fake-proposal.jpg", Story.image "dates-clue.jpg", Story.image "map-clue.jpg", Story.image "puzzle-clue.jpg", Story.image "voicemail-clue.jpg", Story.image "toki-pona-clue.jpg", Story.image "crossword-clue.jpg", Story.image "waver-clue.jpg", Story.image "wordle-clue.jpg", Story.image "jamin-proposal.jpg", Story.image "engagement-ring.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1743220800000)
              , dateIsApproximate = False
              , iconImageName = "icon-engaged!-(part-1).jpg"
              , aabb = { x = 1855, y = 792, width = 187, height = 219 }
              , hitbox = [ { x = 1891, y = 792 }, { x = 1986, y = 792 }, { x = 1994, y = 832 }, { x = 2042, y = 919 }, { x = 2028, y = 979 }, { x = 1988, y = 1001 }, { x = 1915, y = 1011 }, { x = 1855, y = 955 } ]
              }
            , { title = "Engaged! (Part 2)"
              , description = [ Story.text "After lunch, it was Hailey's turn to propose!", Story.text "For Jamin's birthday a few years back, Hailey got him a 2-3 player social deception game called Mantis Falls. He loves it and we play it relatively frequently. ", Story.text "The big reveal at the start of Hailey's proposal was that she had crafted a version of the game made of felt, themed around our relationship, called Jailey Falls In Love (a play on Mantis Falls). The rest of her proposal would be playing through the \"game\" where Jamin took a series of turns. On each turn, he would move down the road, revealing the next road card, and reveal one event card that talked about something in our relationship that was important to us. Then he would reveal one action card that would sort of recreate that event in a fun way!", Story.text "Just so you get the idea, one of the event cards said \"Surprise Event: Love. Effect: write down all the reasons you love the other player. Bonus: open item 2.\" This card commemorated our first anniversary. Item 2 was a journal Hailey had kept for several months leading up to the proposal detailing our daily lives together. The corresponding action card said \"Memory Lane. Choose a couple of pages to read from the book,\" which we did. ", Story.text "Hailey made 12 of each card (12 events, 12 actions, and 12 roads), so we won't detail them all here, but hopefully you can or were able to see them displayed at the wedding. They're beautifully made (Jamin says) and a lovely keepsake of the day. You may even recognize some of the icons used in this project!", Story.text "The third to last action card said to go to Harvard Square and people watch. After that, Hailey walked Jamin down to the Charles river (yes, we both decided to propose right next to the river) and revealed the second to last card which asked Jamin if he wanted to marry her. He said yes! Her engagement gift to him was a watch called \"Enjoy the Ride.\" The second hand is a ferris wheel, so it's hard to tell exactly what second it is, which is sort of the central metaphor.", Story.text "After proposing, Hailey revealed the final cards. The event card said \"Future. Delight in everything the rest of your lives will bring together,\" and the action card told us to go to the Maharaja, where our first date was. We had a lovely dinner, and we mostly just talked about how fantastic the day was and how excited we were to get married!", Story.image "jailey-falls-face-down.jpg", Story.image "jailey-falls-face-up.jpg", Story.image "hailey-proposal.HEIC", Story.image "ring-and-watch.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1743220800000)
              , dateIsApproximate = False
              , iconImageName = "icon-engaged!-(part-2).jpg"
              , aabb = { x = 1571, y = 929, width = 213, height = 344 }
              , hitbox = [ { x = 1784, y = 1229 }, { x = 1780, y = 1251 }, { x = 1768, y = 1269 }, { x = 1740, y = 1273 }, { x = 1641, y = 1174 }, { x = 1609, y = 1088 }, { x = 1571, y = 1058 }, { x = 1571, y = 1005 }, { x = 1587, y = 991 }, { x = 1585, y = 951 }, { x = 1639, y = 929 }, { x = 1680, y = 995 }, { x = 1694, y = 1080 } ]
              }
            , { title = "Moving to Quincy"
              , description = [ Story.text "About a month after we proposed to each other, we moved out of our apartment in Cambridge into our new apartment in Quincy. It was a bittersweet time, because we would no longer be living with our friends, but we were looking forward to what was in store for us in Quincy. We mostly chose Quincy because the cost of living is lower than Boston and it's closer to Hailey's work (her commute to and from Cambridge was much longer). ", Story.text "We think we've landed pretty well here! We can walk to a bunch of restaurants and the library, and it's a lot easier to drive places that are farther than it was in Cambridge. Plus, we're still on the red line, so getting into the city is nice and easy for Jamin's work. It's also convenient for seeing our friends in the city." ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1746676800000)
              , dateIsApproximate = False
              , iconImageName = "icon-moving-to-quincy.jpg"
              , aabb = { x = 320, y = 1037, width = 272, height = 353 }
              , hitbox = [ { x = 320, y = 1048 }, { x = 423, y = 1199 }, { x = 399, y = 1370 }, { x = 584, y = 1390 }, { x = 592, y = 1334 }, { x = 530, y = 1245 }, { x = 516, y = 1124 }, { x = 401, y = 1037 } ]
              }
            , { title = "Work Trip Together"
              , description = [ Story.text "Sometimes when Hailey goes on a work trip, Jamin comes along! It's much better for both of us when he can, but it can be difficult for Jamin to plan because her trips are typically scheduled pretty close beforehand. Our biggest work trip adventure was going to Denmark together. We were tourists for about 5 days, and then worked for 5 more. ", Story.text "Copenhagen was a blast. We went to several castles and several museums, and we went on a boat tour of the city. We visited the round tower as well, which is an old 8-story observatory with no stairs, just one big ramp spiraling around the center until you get to the top. Its core is hollow, and you can stand inside it and see all the way down. We also spent a day in Malmö, Sweden, which is just a 40 minute train ride away. ", Story.image "round-tower.jpg", Story.image "copenhagen-water.jpg", Story.image "giant-crab.jpg", Story.image "copenhagen-pyramid.jpg", Story.image "hotdog.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1754971200000)
              , dateIsApproximate = False
              , iconImageName = "icon-work-trip-together.jpg"
              , aabb = { x = 83, y = 1301, width = 145, height = 260 }
              , hitbox = [ { x = 151, y = 1301 }, { x = 83, y = 1346 }, { x = 95, y = 1559 }, { x = 228, y = 1561 }, { x = 218, y = 1350 } ]
              }
            , { title = "JH"
              , description = [ Story.text "Whoa, meta!", Story.text "Aidan actually had the idea for the embroidery portion of this project a while ago, as a cool wedding sign for our guests to look at as they arrived. Shortly afterward, Jamin had the idea of bridging the gap between the icons and our stories associated with them in the form of this website. We were both very excited about the idea and decided to keep it a secret from everyone until the day of our wedding! So if you've ever wondered about our story or been disappointed by a brief answer from one of us about our relationship, consider this our gift to you - a hand-made mixed-media representation of who we are and who we have been as a couple.", Story.text "Details! We knew this project would take a long time, so we started talking about what icons/stories to do and figuring out exactly how they would look. We talked about important parts of our relationship or events that brought us closer together and came up with icons to represent them. Then Hailey drew out all of the icons on a big piece of paper, then transferred them to wash-away stabilizer which she stuck on the fabric we bought for the sign. At the same time, Jamin started work on the website, figuring out how navigating between different stories would work. ", Story.text "Then the longest part of the process began. Hailey started embroidering around January 9th, and finished on March 19th, spending an estimated 60 hours on it (estimated by approximately how much TV and movies we watch together because that's when she worked on it). Jamin wrote all the stories (yes, it's me writing in this moderately unfortunate mixed 3rd person and 1st person plural). After Hailey finished each icon, and after Jamin finished each story, we would ask each other what the other thought and adjust as necessary.", Story.text "Being a labor of love, the JH was 100% human-made.", Story.text "It's been a lot of fun to have a project that plays to both of our strengths and that we can truly collaborate on. We hope you enjoy it!", Story.image "jh-draft.jpg", Story.image "jh-embroidering.jpg", Story.image "jh-sign.jpg" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1762837200000)
              , dateIsApproximate = False
              , iconImageName = "icon-jh.jpg"
              , aabb = { x = 1351, y = 765, width = 222, height = 250 }
              , hitbox = [ { x = 1366, y = 919 }, { x = 1420, y = 780 }, { x = 1565, y = 765 }, { x = 1573, y = 983 }, { x = 1420, y = 1015 }, { x = 1351, y = 963 } ]
              }
            , { title = "Wedding"
              , description = [ Story.text "We're married! If you're reading this, it means we successfully finished this project on time and planned our wedding well enough that people showed up! We hope you enjoy or enjoyed it!", Story.text "We've been looking forward to our wedding since our proposal a little over a year ago. We set our date about 9 months ago and started the long journey of planning our wedding. Since the beginning, we were dedicated to splitting the planning fairly (as we try to do everything), and we're quite happy with how the process went and how it turned out.", Story.text "We originally decided on a wedding date of May 23rd, 2027, shortly after our proposal. We were relatively constrained on our date. We knew we wanted an outdoor wedding, so it had to be nice weather out. It had to be on a weekend so all of our out-of-town guests could make it. And it had to be on the 23rd of the month, because that's a tradition in Hailey's family. We ended up choosing to move to May 23rd, 2026 because it felt like 2 years was going to be a really long engagement (and a 2 year engagement typically means 2 years spent planning a wedding).", Story.text "The ceremony was always the most important part to us, being the official unification of our lives together. We loved putting the ceremony together and choosing what to include that would be most meaningful for us. The rings were a really big piece of it for us because they will be the most permanent, physical symbol of our marriage. We made them together a couple months before the wedding, and it was a really fun and felt very significant.", Story.text "We're so grateful to our parents for all of their love and support throughout, and their excitement for us. We had regular \"team wedding\" calls throughout planning, which were super helpful in staying organized and being slightly less grounded than our usual selves.", Story.text "We're also lucky to have wonderful wedding parties. We really appreciate all of their help in the planning and execution of our wedding and the events leading up to it. ", Story.text "On Monday after the wedding, we are off to our honeymoon! We are headed to an all-inclusive resort in Riviera Maya, Mexico, where we can relax and put our feet up for a week. We're really looking forward to it.", Story.text "Beyond that, we'll get to work on maintaining our relationship for the rest of our lives. We'll continue our monthly check-ins, and we'll take advice from you all on how to make our marriage the best it can be.", Story.text "And now we ride off into the sunset - I mean we start the rest of our lives together! We've got lots of thank you notes to write, we're going to get the ball rolling on adopting cats, we'll combine our finances, and of course we have to legally change our names. Here's to a long, healthy, loving marriage!" ]
              , date = Date.fromPosix Time.utc (Time.millisToPosix 1779508800000)
              , dateIsApproximate = False
              , iconImageName = "icon-wedding.jpg"
              , aabb = { x = 1017, y = 1082, width = 258, height = 237 }
              , hitbox = [ { x = 1055, y = 1229 }, { x = 1090, y = 1257 }, { x = 1128, y = 1301 }, { x = 1170, y = 1319 }, { x = 1255, y = 1309 }, { x = 1275, y = 1253 }, { x = 1237, y = 1180 }, { x = 1130, y = 1082 }, { x = 1094, y = 1098 }, { x = 1057, y = 1108 }, { x = 1017, y = 1166 } ]
              }
            ]
        )
