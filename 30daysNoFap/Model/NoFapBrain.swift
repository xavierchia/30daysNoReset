//
//  NoFapBrain.swift
//  100daysNoFap
//
//  Created by xavier chia on 30/10/20.
//

import UIKit

struct NoFapBrain {
        
    func getDayNumber() -> Int {
        let startingDays = UserDefaults.standard.integer(forKey: "startingDays")
        let startingDate = UserDefaults.standard.object(forKey: "startingDate") as! Date
        let today = Date()
        
        let calendar = Calendar.current
        
        let todayStart = calendar.startOfDay(for: today)
        let startingDateStart = calendar.startOfDay(for: startingDate)
        
        let daysPassed = calendar.dateComponents([.day], from: startingDateStart, to: todayStart).day!
        
        let dayCount = startingDays + daysPassed
        
        if dayCount > 30 {
            return 30
        }
        
        return dayCount
    }
    
    func checkDayChanged() -> Bool {
        return UserDefaults.standard.integer(forKey: "days") < self.getDayNumber()
    }
    
    func decreaseViewDay(_ viewDay: Int) -> Int {
        if viewDay > 0 {
            let decreasedViewDay = viewDay - 1
            return decreasedViewDay
        }
        return viewDay
    }
    
    func increaseViewDay(_ viewDay: Int) -> Int {
        if viewDay < daysData.count - 1 {
            let increasedViewDay = viewDay + 1
            return increasedViewDay
        }
        return viewDay
    }
    
    func getNumberOfRows(viewDay: Int) -> Int {
        if viewDay > UserDefaults.standard.integer(forKey: "days") {
            return 2
        } else {
            return self.daysData[Int(viewDay)].count
        }
    }
    
    func getDayData(viewDay: Int, row: Int) -> Post {
        
        let lockedData = [
            Post(header: "", body: ""),
            Post(header: "🙇🏻‍♂️ Come back on day \(viewDay) to unlock 🔓", body: "Perserverance is not a long race; it is many short races one after the other\n\nWalter Elliot.")
        ]
        
        if viewDay > UserDefaults.standard.integer(forKey: "days") {
            return lockedData[row]
        } else {
            return daysData[Int(viewDay)][row]
        }
    }

    let daysData = [
        [
            Post(header: "", body: ""),
            Post(header: "Calvin Coolidge", body: "Nothing in this world can take the place of persistence. Talent will not; nothing is more common than unsuccessful men with talent. Genius will not; unrewarded genius is almost a proverb. Education will not; the world is full of educated derelicts. Persistence and determination alone are omnipotent. The slogan 'Press On!’ has solved and always will solve the problems of the human race."),
            Post(header: "Roy T. Bennett", body: "It doesn’t matter how many times you get knocked down. All that matters is you get up one more time than you were knocked down."),
            Post(header: "Winston S. Churchill", body: "Success is not final, failure is not fatal: it is the courage to continue that counts.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Roy T. Bennett", body: "Keep going. Your hardest times often lead to the greatest moments of your life. Keep going. Tough situations build strong people in the end."),
            Post(header: "Mary Anne Radmacher", body: "Courage doesn’t always roar, sometimes it’s the quiet voice at the end of the day whispering ‘I will try again tomorrow"),
            Post(header: "Randy Pausch", body: "The brick walls are there for a reason. The brick walls are not there to keep us out. The brick walls are there to give us a chance to show how badly we want something. Because the brick walls are there to stop the people who don’t want it badly enough. They’re there to stop the other people.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Dale Carnegie", body: "Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no hope at all."),
            Post(header: "Tom Hiddleston", body: "You never know what’s around the corner. It could be everything. Or it could be nothing. You keep putting one foot in front of the other, and then one day you look back and you’ve climbed a mountain."),
            Post(header: "Roy T. Bennett", body: "When the going gets tough, put one foot in front of the other and just keep going. Don’t give up.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "James A. Michener", body: "Character consists of what you do on the third and fourth tries."),
            Post(header: "John Di Lemme", body: "They key of persistence opens all door closed by resistence"),
            Post(header: "Thomas A. Edison", body: "Genius is one percent inspiration, ninety-nine percent perspiration.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Thomas A. Edison", body: "The three great essentials to achieve anything worthwhile are, first, hard work; second, stick-to-itiveness; third, common sense."),
            Post(header: "Winston S. Churchill", body: "If you are going through hell, keep going."),
            Post(header: "Hal Borland", body: "Knowing trees, I understand the meaning of patience. Knowing grass, I can appreciate persistence.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Janet Fitch", body: "The phoenix must burn to emerge."),
            Post(header: "Sri Chinmoy", body: "Not to give up under any circumstances should be the motto of our life: we shall try again and again, and we are bound to succeed. There will be obstacles, but we have to defy them. […] The goal is ahead of you. If you do not give up, you are bound to reach your destined goal."),
            Post(header: "Aristotle", body: "Patience is bitter, but its fruit is sweet.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Tobias Wolff", body: "We are made to persist. That’s how we find out who we are."),
            Post(header: "Winston S. Churchill", body: "Success is stumbling from failure to failure with no loss of enthusiasm."),
            Post(header: "Samuel Johnson", body: "Few things are impossible to diligence and skill. Great works are performed not by strength, but by perseverance.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Abraham Lincoln", body: "I am not concerned that you have fallen – I am concerned that you arise."),
            Post(header: "Samuel Beckett", body: "Ever tried. Ever failed. No matter. Try again. Fail again. Fail better."),
            Post(header: "Roopleen", body: "If you have a dream, don’t just sit there. Gather courage to believe that you can succeed and leave no stone unturned to make it a reality.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Henry Ward Beecher", body: "The difference between perseverance and obstinacy is, that one often comes from a strong will, and the other from a strong won’t."),
            Post(header: "Tupac Shakur", body: "Did you hear about the rose that grew from a crack in the concrete? Proving nature’s laws wrong, it learned to walk without having feet. Funny, it seems to by keeping its dreams; it learned to breathe fresh air. Long live the rose that grew from concrete when no one else even cared."),
            Post(header: "Richelle E. Goodrich", body: "You may be the only person left who believes in you, but it’s enough. It takes just one star to pierce a universe of darkness. Never give up.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Confucius", body: "It does not matter how slowly you go as long as you do not stop."),
            Post(header: "Israelmore Ayivor", body: "Success is not obtained overnight. It comes in installments; you get a little bit today, a little bit tomorrow until the whole package is given out. The day you procrastinate, you lose that day’s success."),
            Post(header: "Robin Hood", body: "Rise and rise again until lambs become lions")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Robert Strauss", body: "Success is a little like wrestling a gorilla. You don’t quit when you’re tired. You quit when the gorilla is tired."),
            Post(header: "Roopleen", body: "The world’s greatest achievers have been those who have always stayed focussed on their goals and have been consistent in their efforts."),
            Post(header: "Roy T. Bennett", body: "Change course, but don’t give up.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Margaret Atwood", body: "Water does not resist. Water flows. When you plunge your hand into it, all you feel is a caress. Water is not a solid wall, it will not stop you. But water always goes where it wants to go, and nothing, in the end, can stand against it. Water is patient. Dripping water wears away a stone. Remember that, my child. Remember you are half water. If you can’t go through an obstacle, go around it. Water does."),
            Post(header: "Jason Mraz", body: "You’re not obligated to win. You’re obligated to keep trying. To the best you can do every day."),
            Post(header: "Mokokoma Mokhonoana", body: "We love being mentally strong, but we hate situations that allow us to put our mental strength to good use.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Charles Haddon Spurgeon", body: "By perseverance the snail reached the ark."),
            Post(header: "Confucius", body: "The man who moves a mountain begins by carrying away small stones."),
            Post(header: "Beverly Sills", body: "There are no shortcuts to any place worth going.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Christopher Pike", body: "Persistence is the key to solving most mysteries."),
            Post(header: "Chris Bradford", body: "Seven times down eight times up."),
            Post(header: "Roy Bennett", body: "Your hardest times often lead to the greatest moments of your life. Keep going. Tough situations build strong people in the end.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Israelmore Ayivor", body: "It’s just a matter of believing it as possible, and taking the cross millimeter by millimeter."),
            Post(header: "John Quincy Adams", body: "Courage and perseverance have a magical talisman, before which difficulties disappear and obstacles vanish into air."),
            Post(header: "Mario Andretti", body: "Desire is the key to motivation, but it’s determination and commitment to an unrelenting pursuit of your goal – a commitment to excellence – that will enable you to attain the success you seek.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Roy T. Bennett", body: "Never lose hope. Storms make people stronger and never last forever."),
            Post(header: "Maeve Greyson", body: "No one has the power to shatter your dreams unless you give it to them."),
            Post(header: "Roy T. Bennett", body: "It doesn’t matter how many times you get knocked down. All that matters is you get up one more time than you were knocked down.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Richelle E. Goodrich", body: "When it comes to fighting for your dreams, be a dragon. Breathe fire."),
            Post(header: "Pittacus Lore", body: "No. Don’t give up hope just yet. It’s the last thing to go. When you have lost hope, you have lost everything. And when you think all is lost, when all is dire and bleak, there is always hope."),
            Post(header: "T.F. Hodge", body: "The sky is not my limit… I am.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "F. Scott Fitzgerald", body: "Never confuse a single defeat with a final defeat."),
            Post(header: "Robert Fanney", body: "In my experience, nothing worthwhile has ever really been all that easy. But it certainly has been worthwhile regardless how difficult it seemed."),
            Post(header: "T. Scott McLeod", body: "Success doesn’t come to you; you go to it.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Imania Margria", body: "If you lose what was most precious to you, never stop fighting for it until you have it once again in your possession."),
            Post(header: "Roy T. Bennett", body: "Those who win never give up. Those who give up never win."),
            Post(header: "Kenneth H. Blanchard", body: "When you’re committed to something, you accept no excuses – only results.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Ben Carson", body: "Success is determined not by whether or not you face obstacles, but by your reaction to them. And if you look at these obstacles as a containing fence, they become your excuse for failure. If you look at them as a hurdle, each one strengthens you for the next."),
            Post(header: "Harper Lee", body: "Real courage is when you know you’re licked before you begin, but you begin anyway and see it through no matter what."),
            Post(header: "Criss Jami", body: "The harder you fall, the heavier your heart; the heavier your heart, the stronger you climb; the stronger you climb, the higher your pedestal.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "YEAH BOYS DAY 20 LETS GET IT", body: "This is the first time in my life to ever hit 20 days I'm super happy to be here right now I just beat my previous longest streak of 19. Anyone who isn't here yet I just wanna let you guys know it's super possible im just an average guy if I can do it so can you. Can't wait to go for the big 9 0 enjoy the day boys and remember stay soft. 😘\n\nu/PROG_ORG, reddit"),
            Post(header: "Update: DAY 20", body: "Just waved to give a quick update guys\n\nu/opticfawn, reddit"),
            Post(header: "Day 20. I still can’t comprehend that it’s so powerful", body: "Just... Wow. People talk here about many different advantages of nofap. But personally, I feel like confidence is the major one for me.\n\nI start to feel myself in a way I had never been feeling before. I can say what I think and what I want to say, finally. Like, you know, I don’t feel any anxiety coming when saying the things I want to say to anyone.\n\nI don’t feel shy or stupidly stubborn in any social situation anymore. And oh my god, the level of my ability to formulate my own speech has increased to the point where I can ran out of breath while explaining something and still make sense. It’s just razor sharp now.\n\nThank you all for this amazing community, I’m starting to think that I’m alive again.Never give up if you feel like you want it.\n\nu/weliveinahologram2, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "I am on day 21 going for 100+ and today I gave this drop dead gorgeous girl my number and she replies back instantly.", body: "I was so nervous after I gave her my number, thinking that she wouldn't reply but to my surprise I got a response back right away and now my next goal is to invite for over for study date, so I can show her that not only am I smart, but I am also fit, attractive, and I can cook very well while getting to know her better and hopefully if all goes well let's hope then in the near future we can be a wonderful couple as my friends say we would make a beautiful couple. Wish me luck boys and any tips would be much appreciated as it's been since Feb that I have been single so I am a bit rusty.\n\nu/imran81222, reddit"),
            Post(header: "2 yrs PMO Addict finally hit day 21 after many relapses and resets. Even Sky is not the limit", body: "All thanks to this subreddit and to my will power. I am not good at writing great posts but what I wanted to convey is in the title itself. Thank you\n\nu/Icy_Tie2, reddit"),
            Post(header: "Day 21 of 365", body: "Made it to day 21! I haven’t seen any ground breaking changes yet but what I have seen is great . I’ve seen higher confidence,higher testosterone, deeper voice, more energy, sharper clarity, and my favorite of all, strong self discipline and will power.\n\nu/Advancingthruthefire, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 22 - days go faster now it seems", body: "I’m 3+ weeks in and it seems like my days go by so much faster when I’m not worrying about where/when I am gonna pmo. I’m just kinda living my life in a much more satisfactory way. No hangs up to worry about. Enjoy the progress!\n\nu/DontwatertheC, reddit"),
            Post(header: "Day 22 Of Nofap after 8 Years of addiction", body: "Holy Shit! The Effects are Very Good. I should have started this young and should never have wasted my energy by chasing girls and Other Pleasures. Next Goal Is To Reach 60 Days.\n\nu/romi_007, reddit"),
            Post(header: "Day 22 : First day of school through online classes", body: "Today my school classes began again, but of course it was through an online videoconference platform.\n\nIt was quite interesting as an experience to have classes in this way. And I also positively suprised myself that I participated more during the classes, because every student can express his ideas on the text chat of the platform, and I participated more than what I used to.\n\nIn the afternoon, after my school classes, I continued to work in the garden around my house. Then, I also went for a little walk in my neighborhood.\n\nWe also have new work projects to do for school now, and which I think is a good thing also in my opinion because it will keep me busy and occupied. But I just need to stay focused on my daily habits so that I can maintain a good balance between work and my well-being as well my personal transformation journey.\n\nI wish you all the best guys!\n\nu/MsLC418, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "8 days, 23 days, next up 100 days...", body: "new record for me.. 23 days (previous was 8) unfortunately, I started over this afternoon.. confidence still intact - I'm going to crush this next goal\n\nu/Son_of_Elohiym, reddit"),
            Post(header: "Day 23 of 365", body: "Starting to feel the momentum of this lifestyle. I do what I say I’m going to do, and I’m cutting out things in my life that doesn’t benefit me. I quit caffeine over a week ago, and I feel amazing. I will not be dependent upon anything on this earth but God alone. Alright brothers, keep fighting!\n\nu/Advancingthruthefire, reddit"),
            Post(header: "day #23 ~ did a 5km hike yesterday with 12 kg on me", body: "I mean i am not where i want to be but i am on my way . Looking forward to the Day#28 mark\n\nu/hail642, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 24: effects visible.", body: "Yesterday I had feelings if I didn't do exercise, I'm going to relapse. So, after a month, went to gym.\n\nMy strength was increased for sure, my biceps were puffed in an hour. I'm feeling good today, kind of freshness..\n\nAlso I noticed subtle bad behavior of 2 people towards me. I used to ignore that, but once I realized, I made a rule for myself to not ignore it. This is biggest change I can see in myself..\n\nSlept peacefully in night.. Day 24 defended.\n\nu/OwnedByOwn, reddit"),
            Post(header: "Day 24 of 365", body: "Woke up 2 hours before my alarm because a Charlie Horse decided to make a visit to my calve. I was able to go back to sleep but it definitely affected my sleep. So today I don’t feel at my best. But you know what, who cares, it’s another day being alive. Your going to have bad days my friends but don’t let them revert you back to your old ways. You just have to fight through those days, and keep fighting.\n\nu/Advancingthruthefire, reddit"),
            Post(header: "Day 24/90", body: "Had strong urges but that doesn’t mean that I will relapse . I resisted them and I won the battle and I will keep going no matter how strong the urges get and I will keep grinding and focus on myself and never stop ... keep up the grind everyone 💪💪❤️☑️\n\nu/amajmoh, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 25 : Deeper voice", body: "Some of my family / friends just asked me if my balls had dropped again as a joke because my voice has changed that much.\n\nTheres now a powerful under tone almost echo like to every word I say.\n\nPeople notice the changes in your spirit, mind and soul when your on the journey.\n\nStay hungry brothers.\n\nu/cLomax98, reddit"),
            Post(header: "DAY 25", body: "Day 25\n\nFeeling great . More optimistic than before .\n\nNo Fap has improved my sleeping patterns. Not only has it positively impacted my focus but I also find more time to do constructive work .\n\nu/12_hms, reddit"),
            Post(header: "Day 25 - Thoughts", body: "So today went very well and this week was very positive too.\n\nI'm taking cold showers now for over 2 months. Today I'm wondering if the commencement of these cold showers had strengthen my resolve during this reboot. It's quite possible.\n\nThis week I also took part in an acting class which was a very positive social and creative outlet.\n\nThe last couple of days I've picked up my guitar again and started playing and learning a song.\n\nYesterday I went on a date which was alot of fun. There was kissing and this did spark off some strong urges, naturally I suppose. I just need to be cautious here and make sure my intentions with this girl are healthy and respectful.\n\nToday I went to the gym, meditated, painted my bathroom, read a little, played guitar, eat very well, chatted on the phone to my brother.\n\nToday, I'm so grateful. Today is enough.\n\nu/Lay_Down20, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "NOFAP Day 26_Benefit I Get 💯💯💯💯💯", body: "Lazy Eye is disapper\nEye Pupils is wider\nEye is Brighter than before\nVoice Deeper than before\nEmotion is stable\nConcentration is boosting to triple (3X)\nMind fog is disapper\nGain Stamina\nHad eye contact with girl\nRealized that relationship is not only about SEX\nApproach to girl is easier than before\nNo Shyness to Girl\nOpen talk with Girl\nMale friend are more respect on me\nConcentrate on present thing\nReduce Anxiety\nDon't want to comparison with other people achievement anymore\nFound my passion on ENGINEERING\nI HAD 72 DAYS STREAK ON 12-MARCH-2019 AND RESTART. TODAY STREAK WAS DAY 26\n\nu/PEACE_OF_MIND_2019, reddit"),
            Post(header: "Day 26 Feeling like a teenager again.", body: "I've never felt better in my life. I'm an infantryman in the U.S. Army deployed to afghanistan once and although we workout five days a week, before NoFap I was getting fat, verging on alchoholism and even got a divorce. I was nihilistic, awkward, and could barely hold myself together at work. At day 26 I have the hope and drive that I left behind in my teenage years. I used to reminisce about those years and think they were the pinnacle of my life. Now I'm eating cleaner than I ever have, I'm back in the gym after work six days a week and feel like a god. I want anyone who reads who may need motivation to know that it's more than worth it, it gave me my life back and I'm on the climb to being more than I have ever been.\n\nu/XFiles3, reddit"),
            Post(header: "Day 26: I FEEL LIKE I HAVE MY LIFE BACK", body: "Music sounds so much better, I have so much more energy than before. I’m more productive and am feeling back on top. For some reason after about 4-5 years of trying to stop, this time it’s stuck. I feel so good!\n\nu/barnebous, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 27, there are some positive changes I noticed", body: "Hey guys.\n\nI've heard about nofap for the first time 3 years ago. My best streak was 16 days for a long time and then I quit. Recently I gave it another shot and after a couple failed attempts, I am on my 27th day. I am not expecting superpowers or anything, my motivation was 'I should just get rid of at least one addiction' and that I would just be better off. But still, I am having some good things going on now.\n\nMost pronounced change I noticed is that I have a lot more drive to put effort into various aspects of my life. It is not at the level of an elite level athlete's drive to become the best in the world or anything. Just a lot more than before. That drive translates into action as well.\n\nAnyway, I hope I keep this up and wish you guys all the best.\n\nu/kendiminfeykiyim, reddit"),
            Post(header: "Day 27 of 365", body: "In the past, I would let my anger get the best of me. And I would stew on something that would bother me for hours. But yesterday I noticed a big change in my ability to assess the situation and move on from it. There was a handful of things that happened yesterday, that really got on my nerves, but I didn’t let them ruin my day. Your going to see benefits from this life style that you probably wouldn’t call superpowers but they are important nonetheless. Alright brothers,fight to your last dying breath!\n\nu/Advancingthruthefire, reddit"),
            Post(header: "Day 27 Check In", body: "Another day, another check in. Hope all reading this is doing well.\n\nu/riley0707, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 28, one of the worst days in my life", body: "Everything just seemed to have attacked me at once, lost something important to me, coworkers ganged up on me the entire day, my reputation dropped, ex girlfriend messaged me and I learned she already moved on from our year and a half relationship already. Never really felt so alone. Yelled at God in absolute anger and frustration.\n\nFact is, I know ill make it through the night without relapsing. I know it would only make it worse, and tomorrow will be a new day.\n\nTo 90 I go.\n\nu/Goebble, reddit"),
            Post(header: "Day 28!", body: "Day 28 technically a month(4 weeks) but i will go for two more days\n\nu/DoomirTheBest, reddit"),
            Post(header: "Day 28. How I beat my urges", body: "Hello, reddit. Happy that I found out this subreddit early. I'm currently 14 and I recently started NoFap. This streak is by far the best one I've ever had. My 2nd best is 4 days. Something I found out during this streak is how to keep beating my urges. Recently I start having really strong urges during the night, that makes me wanting to relapse. But whenever I have an urge, the first thing I do is start telling myself to inhale and exhale. I try to make myself feel comfortable and to relax. I let everything just go through my mind and keep inhaling and exhaling. This immediately kill my urges. Hopefully I helped someone.\n\nu/Dvoise, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 29, females approaching", body: "What up guys, on day 29, writing this from the locker room at the gym, within the last 7 days 2 females have approached me at the gym. I’m just minding my own business with my headphones on and shit. If you’re still doubting this shit you’re a fool, keep going strong my brothers.\n\nu/A_CRUMBS, reddit"),
            Post(header: "Day 29 - You never really lose your demons , you only learn to live above them.", body: "Tomorrow I will be completing 1 month of this journey. Though this is not an extraordinary achievement, but means a lot to me. Just like everyone I struggled my way till here. I remember PMO 3-4 times a day and then end up feeling shit. I cried inside, but tears didn't come out, I thought all my emotions were dead. Nothing felt exciting, I was depressed and just living a shit life. It took me more than a year to reach this mark and trust me it was hard as ****. I failed so many times, that I even stopped believing that I would ever be able to control myself.\n\nTomorrow is just a first checkpoint of this journey, I haven't observed many changes in myself yet, but I do know I am a confident and a better person than I was before.\n\nI am so proud of myself that I made it this far. I don't wanna stop now. I will keep going.\n\nThanks for reading !!\n\nu/panpaliyatushar, reddit"),
            Post(header: "Day 29 of 365", body: "One day till I hit the big 30, and that’s just a small step in this journey ,but it’s a start nonetheless.\n\nu/Advancingthruthefire, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "DAY 30! I DID IT", body: "Hey guys thank you for everyone motivating me here this is such a beautiful community to help people achieve their goals..\n\nOther story,Due to the reduced brain fog,i have decided to break up with my girlfriend who is not supportive as i have many things going on in my life and my best to her is not enough,im going to continue focusing on myself and chasing the bag.Have a nice day✨\n\nu/salfzzzz, reddit"),
            Post(header: "Day 30!!! 👑 My streaks over the last few months were: 3, 11, 1, 3, 5, 10, 8, 2, 10, now 30.", body: "I've got momentum behind me. Life is good!\n\nu/phaesa, reddit"),
            Post(header: "HELL YEAH DAY 30!!!", body: "It took me a year to get this far gonna push for the 90 days can’t wait 💪🔥\n\nu/Red_Physics, reddit"),
            Post(header: "Note from creator", body: "Well done!🥳 You did it! If you have any app feedback drop me an email at xavier.cpy@gmail.com")
        ]
    ]
}
