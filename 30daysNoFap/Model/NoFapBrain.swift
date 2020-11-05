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
            return self.lockedData.count
        } else {
            return self.daysData[Int(viewDay)].count
        }
    }
    
    func getDayData(viewDay: Int, row: Int) -> Post {
        if viewDay > UserDefaults.standard.integer(forKey: "days") {
            return self.lockedData[row]
        } else {
            return self.daysData[Int(viewDay)][row]
        }
    }
    
    let lockedData = [
        Post(header: "", body: ""),
        Post(header: "🙇🏻‍♂️ Come back later to unlock 🔓", body: "Perserverance is not a long race; it is many short races one after the other\n\nWalter Elliot.")
    ]
    
    let daysData = [
        [
            Post(header: "", body: ""),
            Post(header: "Day 0: Not Gonna Fail This Time", body: "I can do this.\n\nEDIT: Let's all do this together.\n\nu/lianeric, reddit"),
            Post(header: "Day 0", body: "This could be the start of something special\n\nu/success_ni_decision, reddit"),
            Post(header: "DAY 0", body: "Man cannot remake himself without suffering, for he is both the marble and the sculptor.\n\nu/MonsieurRushB, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "After a decade of PMO, today is the day I quit. Today is day 1.", body: "I feel mentally and physically exhausted right now, and I know tonight is going to be bad. But I’m going to use all my willpower to pull through 🤞🏽.\n\nu/skxnnykxdjayjay, reddit"),
            Post(header: "Day 1", body: "I’ve been lurking around here but I’m here to say I’m gonna be starting my journey today I want to make something out of myself and become someone more productive and motivated\n\nu/Whatadub, reddit"),
            Post(header: "Day 1 of No Fap completed successfully !", body: "I have completed day 1 of no fap successfully.\n\nu/Sarthaknotnice, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "I finally did it. After trying for so long , I managed to reach day 2 !", body: "After trying for so long , I finally did it guys. Instead of fighting the urge , I redirected it to something productive . I started learning Georgian and cooked some food.\n\nI am now ready to keep learning new stuff 💪💪💪\n\nu/xxxtentacion22, reddit"),
            Post(header: "Day 2 complete. Feeling good!", body: "I have 2 days and 1 night of my no PMO journey. Honestly. It’s hard. I thought quitting substances was hard. Nah. This takes way more energy. I have to be mindful about everything.\n\nIf I’m watching YouTube, I will literally block any content that may have a trigger anywhere in. I’ve deleted ALL social media. Such as Facebook, Twitter, Snapchat, Instagram etc. I have reddit solely for this community.\n\nI’m confident this journey will change that for me.\n\nThank you all for this community and support so far! Good luck everyone!\n\nu/SPC1stClass, reddit"),
            Post(header: "This isn't a cry for help. This isn't asking for advice. This is me just being happy cause I'm on day 2 and I fought off an urge.", body: "It's been months since I last tried to stop. I'd given up. I stopped believing in my old faith, I was stressed with graduate studies and work was piling on. It formed a perfect storm that lasted from early June till now. But things changed.\n\nI started talking to my ex again. We're back to being friends like we were before we started dating and it feels good. She's an amazing person and knowing her reminded me of what life without addiction was like: I felt better, accomplished more, and had more energy. She's the perfect person to give me motivation to stop: not because I want her back, but because she reminds me that I can't continue to do this if I want to fully respect and love whoever it is I'll be with one day.\n\nu/RaisingWildKnights, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 3 and it's getting tougher", body: "In the beginning, I was like a young soldier going into war. I was happy and optimistic, but now it's getting tough. Is anybody else getting this feeling?\n\nu/Nickan04, reddit"),
            Post(header: "Day 3 and I can fluently talk again", body: "I don’t know if this is placebo or not but this is the best thing which could have happened to me.\n\nI’m 24 and yesterday I was moderating a meeting with 30+ people online and usually I have to think about every single word I say, I used to sometimes write word by word down before the meeting starts so that I can basically just read it off the paper. Yesterday was all different. I could just talk fluently without notes and was even witty sometimes. Afterwards I had a phone call with a female which is kind of my colleague of mine for more than 3 hours and we just talked and talked and talked. Usually I have a very hard time finding topics to speak about and I just try very hard not to create a weird long moment of silence, but this time I didn’t have to.\n\nI used to do PMO 4-6 times a day and now I’m on my day 4 and it might be only placebo because usually the effects start to kick in later based on what I read here, but I just hope this continues for the next weeks, months and years of my life.\n\nDon’t give up guys, it’s totally worth it\n\nu/nomore9919, reddit"),
            Post(header: "Being on Day 3 is already better than most people.", body: "If you have just relapsed, don't give up! Pick yourself up. Most people cannot even stand two days without PMO. Instead of being frustrated over losing the number of days, you should focus on the journey. Don't give up just because you stumbled.\n\nu/Mr_SunW, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Started day 4", body: "I know it's not that much, but this is a real milestone for me!! Keep strong, everyone!\n\nu/ConfettiBazooka, reddit"),
            Post(header: "Day 4", body: "It was a pretty great day today. I got to socialize a lot with new people, which gave me a lot of joy and energy. I felt a bit tempted going through my old camera roll today, but I actively chose not to dwell on the pictures and to permanently delete them right away. Being intentional about the decisions I make daily has helped a lot. I got this!\n\nu/wanderinggopher, reddit"),
            Post(header: "Day 4 completed 🙏🔥", body: "thanks for the support\n\nu/n0_nut, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "I am in Day 5, but is something", body: "Yeah... Day 5... I see a lot of posts '14/30/365 days without' and I kinda feel small, but the person in his 365 day start where I am. Everyone pass day 5, if they can, I will can. Last time I tried stop, I stop for one week, but I want be the guy who say 'Yeah, day 365, if I did, you can do too'\n\nu/Thundermator, reddit"),
            Post(header: "Day 5", body: "Feeling good, my goal is big this time, 200+ days, that’s right, 200+ days! I want to aim for 200+ days, I want it! I know I have the strength for it and the willpower! I just have to not entertain negative and sexual thoughts. That’s all! If I can do this I can go for infinite amount of days! Let’s do this, day 5 check! ✅✅✅\n\nu/bruhsir, reddit"),
            Post(header: "Day 5 💪", body: "Sleep is good. Starting to wake up happy and confident. I'm able to do my studies properly. Started being attentive and more responsive in my classes.\n\nWhat else do you need? Oh, wait! a fine body! Yes, I'm planning to develop a regular home work out routine for myself.\n\nFeelin goooood\n\nu/nofap_u, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 6", body: "So today marks the 6th day in my No-Fap journey, and this is the first time in months that I've ever made it this far. Tomorrow will be the 7th day which is the one week point. So far I haven't really noticed any changes, but my mood has SIGNIFICANTLY improved. I now know my urges and how to control them, so i think i'm just going to ride this out until the 90 day mark, and see what happens.\n\nu/Spare_Ship9489, reddit"),
            Post(header: "Day 6", body: "Day 6 over. It's been very very easy today since I had school. I was distracted all day and I am happy. I normally fail on day 6 but I didn't. Tomorrow is day 7 which is the furthest I've ever made it and I hope I don't relapse tomorrow and I will try not to. I exercised today too. Day 6 of no fap completed.\n\nu/aceboy69420"),
            Post(header: "I overcame the urge! Onto day 6", body: "Boys I was able to beat the nightly urge it’s always the worst urge at night! I might have to start sleeping on the floor\n\nu/RJ_Cookies, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 7: milestone 1✅✌️", body: "It feels like i am doing it for ages. The urges got reduced. I am feeling more enthusiast active and somewhat guilt free. Of course there are other things but still its type of small victory. Way to go💪\n\nu/blazingblaze76, reddit"),
            Post(header: "Day 7 - my crush noticed me!!!!!!", body: "Just started working at a brand new store that opened up. Mostly everybody is new and there was the really cute girl in my orientation group. About a week goes by of just super casual “hey” and “good morning” as we walk by each other. We work in different departments so I really never have a natural opportunity to talk to her. Anyways I was sitting out on the patio for my break. I was reading in the sun and bobbing my head to Dreams by Fleetwood Mac which was playing on the outdoor speakers. About 30 mins later when I’m off brake I go and bring some carts to her. As I’m about to walk away she says “hey so I have to ask... what book where you reading out here?” I told her and she said she hadn’t heard of it but then she said I just looked really happy and seemed to have “main character energy”.\n\nWalked away with a super big smile and hit a lil dance once I was by myself :)))) what a dub\n\nI’ll update if anything else happens today!\n\nu/a-sad-chad, reddit"),
            Post(header: "Anyone is on day 7 here, show yourselves !! 💪🏼💪🏼", body: "After one year of trying and repeatedly succeeding 15 days and sometimes 30 days, here I am again, I want to finish this year by achieving 90 days with a big smile, lets do it one last time 💪🏼✊🏼👊🏼\n\nu/Faspstronaute96, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Hey guys, just a day 8 here but I have one strange technique that has really helped me and wanted to share", body: "This sounds really dumb, but whenever I'm home alone and it's late at night or in the evening, I turn off all the lights and put on some really loud music and dance like a maniac. Hopefully this works for some of you guys too. Stay strong :)\n\nu/r888b77q2, reddit"),
            Post(header: "Completely new person on Day 8!", body: "I'm feeling so much confidence today I gotta admit I'm uncomfortable with this new me. But growth requires us to get out of our comfort zone and I think this is what's happening to me.\n\nI'm not doing NoFap for female attraction but I'm definitely noticing benefits towards that area (see my previous post for more details on that). I've also noticed that I'm keeping eye contact with people plus I'm walking the streets with my head held high. Most importantly, my concentration in class has improved tremendously and my performance (in my studies) is skyrocketing.\n\nI've been doing NoFap (on Reddit) for four months now but before I joined Reddit for at least a year now. So many relapses over the year has really made me miserable but finding NoFap on Reddit has really made me improve. I don't even feel like relapsing. When the urges come, I embrace them instead of avoiding them. This is how I managed to reach Day 8.\n\nThank you NoFap for your overwhelming support. Best corner of the internet.\n\nu/Coney-Boney, reddit"),
            Post(header: "Day 8", body: "Day 8 done. Today was a good day. I had a 'strong' morning : finished the book I was reading, then did a workout and after that I took a cold shower. At the end of the afternoon I played some basketball. And in the evening I played some Smash Bros with my brother and we had a lot of fun.\n\nI notice that my self confidence is increasing slowly with time and I'm also more motivated than before. I'm still not at the place I want to be, but I'll get there.\n\nConcerning urges, I didn't have any strong urges. There were some small ones (they're always there), but nothing significant.\n\nSee you tomorrow.\n\nu/Hellow11, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 9.. I m going for putting a 0 next to it.. who’s with me.. ???", body: "Motivation...\n\nu/dream_chazer, reddit"),
            Post(header: "Today is day 9", body: "I haven't experienced urges yet and I'll stay strong. I can't go to school cause I still have a cold, but I'll do all my homework today. Wish me luck!\n\n u/sheluvLuis, reddit"),
            Post(header: "Day 9 🥳 Done & dusted", body: "🌻\n\nu/shre279, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "DAY 10 AND I SO PROUD OF MYSELF", body: "Here's what i have achieved in these 10 days\n\n1.My body was beginning to recover itself. I usually feel like someone will be sitting on my shoulders if i do that 'thing' but now within 3 days I have completely lost that feeling\n\n2. I usually don't talk to people and I am always in the bad mood but when i stopped doing that 'thing' I suddenly became a guy that wants to be with people all the time , I was more friendly than ever . My family and relatives begin to notice this change that happened to me\n\n3. My body shape have changed . I was at 79 kg and now I AM AT 73 KG (my biggest achievement in my life btw) and my belly is beginning to be flat. I began to workout intensely and I found inner strength and peace\n\n4. My Crush is beginning to show some interest into me. I am having crush with her for 2 years and this is the first time. She talked about what type of guy she like and most of the thing suits me.\n\n5.And the last thing is my grade sky rocketed. I was dumb af but now i feel damn fcking smart. I placed top 30 out of 500 people in the whole school.\n\nAll this won't happen if you guys didn't support me. Everyone in this subreddit helped me in every way. Without you guys , i can't do nothing\n\nAND GOOD LUCK BROTHERS OUT THERE , WE WILL BREAK THIS CURSE TOGETHER\n\nu/i_can_beat_my_devil, reddit"),
            Post(header: "Today is day 10", body: "I honestly didn't think I'd get past day 3. There have been urges, but I've been keeping myself busy.\n\nI think today will be more challenging because there's that mental aspect of hitting a milestone where your mind wants to let its guard down in accomplishment... I won't let that happen though. Got lots to do today.\n\nFor all those struggling with the urge. Stay strong. Our minds are limitless in what we can do. The only thing holding ourselves back from thinking we can do anything is ourself telling us we can't. It's all bullshit. Just do it!\n\nu/Recommendation_Tasty, reddit"),
            Post(header: "Day 10!!!", body: "I'm so happy about this streak. Even tho it's not long, I'm proud because it's my longest streak in years. I won't stop and won't break down. This community is so great, I feel so much more confident in my abilities.\n\nu/sheluvLuis, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 11", body: "Day 11 done. I had no real urges today, which is very nice. I took a cold shower this morning (as every morning) and spent some time reading. In the afternoon I spent most of my time playing videogames (I finally completed Pokémon Diamond :) ). In the evening I had a fun time with my family playing a trivia game. I enjoy life more and more.\n\nSee you tomorrow.\n\nu/Hellow11, reddit"),
            Post(header: "Day 11", body: "11 days strong and not an end in sight boys 💪 🔥 These urges won’t control me.\n\nu/JapansThirdNuke, reddit"),
            Post(header: "Day 11 no fap successful.", body: "Successfully completed 11 days of no fap journey.\n\nu/Amit280293, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 12-I Bagged Her Groceries", body: "The same blonde girl came back to my job again. And I had the courage to ask if she wanted a bag. Lol. And after I finished working I did my beer isle routine. I sparked up some small talk with a girl choosing a beer. Her name is Chanele from South Africa. She's cute with a mask on. Even cuter with it off. Lol. She invited me to a board game place. They were playing DnD. I am a newbie so I didn't get to play this time. But I played Settlers of Catan, met a lot of people and had fun.\n\nu/namozen, reddit"),
            Post(header: "Day 12, yes!", body: "Doing great people let's keep this up!\n\nu/ConfettiBazooka, reddit"),
            Post(header: "Nofap day 12 in hard mode", body: "I’m doing pretty good an nofap so far no distractions in my way let’s go !!!!\n\nu/Orlando-Zwarrior, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 13", body: "Day 13 done. I had a good day today. Started my day with a cold shower and playing on my keyboard. In the afternoon I worked. I spent two hours reading in the evening and finished my book, and after that I spent some time playing a videogame with my brother.\n\nI didn't have any strong urges today, I think mainly because I kept myself busy all day.\n\nI did forget to meditate today, so I'll make sure I won't forgot to do that tomorrow.\n\nAnyhoo, goodnight and until tomorrow.\n\nu/Hellow11, reddit"),
            Post(header: "Day 13: First Benefit", body: "Normally I feel this benefit on Day 4 but this time it seems to have been a bit delayed. The benefit is increased muscle strength and endurance. Suddenly my push-ups form has gotten better and even when going all the way down to my chest they feel way easier than normally. Also I can do more and faster push-ups now. Edit: Also slightly more energy. It could just be because I am working in a different area today though.\n\nu/OCDACCOUNT123456, reddit"),
            Post(header: "Ay day 13", body: "I'm never quiten I'm going straight to day 90 and beyond\n\nu/lstpyro, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 14 or 2 weeks!", body: "Its been 2 weeks now. Feeling good & still in control.\n\nAfter 2 weeks of thoughtfulness, meditation & change of habits is that i feel that i dont try to live my life like life is a climb on the ladder. I got stuck in traffic yesterday & i put on some nice music, did some breathing exercises and actually kinda enjoyed being stuck there for a while. Not racing towards goals that are always moving on front of you on the horizon but being more 'here and now' is a nice new mindset that was always something i brushed off as hippie shit, but now im realizing that if im unable to enjoy the state i am in RIGHT NOW, how am i going to enjoy myself in the coming days, weeks or even years from now? \n\nIts hard to type it out for me in a good fashion since im nowhere near a monk or spiritual guide, but something in me feels like it has kinda 'clicked' and my days just keep floating on in a very enjoyable fashion.\n\nfor those that haven't already, try meditation!\n\nu/throwaway786324, reddit"),
            Post(header: "Day 14. Everyone was staring at me", body: "Because I cut my own hair and it turned out to be funny\n\nu/Flaring_Sagittarius, reddit"),
            Post(header: "Day 14", body: "Two weeks of NoFap done!\n\nI had an okay day today. I started my morning well with a cold shower and some time playing the keyboard. In the afternoon I visited my grandparents. It was nice to have a chat with them. I also spent a lot of time reading today. At the end of the day I felt a little down. I'm a little stressed about schoolwork and whatnot and it became a little too much. I took some time alone, took a shower and spent five minutes meditating and I feel a lot better now.\n\nAfter two weeks I feel more confident again. I also feel stronger emotions, which I consider a good thing. I feel more motivated to work on myself and become a better person, for myself and the people around me.\n\nNow let's keep going.\n\nSee you tomorrow.\n\nu/Hellow11, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 15", body: "Day 15 done with no problems with urges. In the morning I did a short workout, took a cold shower and meditated for a few minutes. After that I went to school. After school I spent some time reading.\n\nI felt pretty lonely today. That's why I took a walk in the evening, gazing at the stars for some time. I find being outside and being amazed by the hugeness of the universe a great way to clear my mind. Overall a good day.\n\nSee you tomorrow\n\nu/Hellow11, reddit"),
            Post(header: "Day 15 Completed! Now my mind's just playing tricks", body: "'You've already done 2 weeks, one more PMO won't hurt.' - These are the types of tricks my mind is playing now.\n\nIn the first week and a half, the urges felt more like waves. It was more like something I needed to do.\n\nNow it's less of a 'need', and more psychological. It's arguable which one is tougher, but I do think it's gotten easier.\n\nOver time, these types of urges will go away.\n\nOnwards to day 16!\n\nu/iShowerErryDay, reddit"),
            Post(header: "Day 15", body: "That empty feeling is gone. All of the shame and guilt I felt from addiction is irrelevant now. The constant negative self talk has been silenced and my sense of self worth is gradually resubmerging. I feel like I'm becoming a better person every day. After years of being stuck at emotional rock bottom, I am beginning to feel peace.\n\nThank you all for being so good to one another and helping each other heal <3\n\nu/HariTerra, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 16 !✊", body: "Definitely not getting easier , goin a bit crazy over here but we good, noFap gang\n\nLEESSGGOOO\n\nu/SosaUtakea, reddit"),
            Post(header: "I’m on day 16 on my first attempt", body: "What really helped me was when I stopped I immediately told myself that PMO was something that I used to do and I don’t do that anymore. I avoided the mindset of 'I’m trying to quit' because then I just see myself as always just trying and not actually quitting. When you have the mindset of 'that’s something I used to do' you start to see yourself as someone who doesn’t PMO and live your day to day life as someone who doesn’t and what that person does vs just trying to quit.\n\nu/saintpablo5, reddit"),
            Post(header: "Day 16", body: "This is my best streak since I discovered NoFap\n\nDon't worry for me, I won't give up\n\nu/AdrienJrn, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 17/90", body: "Today i had a bad day , but that doesn’t mean that I relapsed. I had alooooot of urges today but I was strong and I handled the urges💪 (( strength does not come from winning. Your struggles develop ur strength when u go through hardships and decide not to surrender that is strength ))\n\nu/amajmoh, reddit"),
            Post(header: "Day 17, new record, come on!", body: "-exercise \n-meditation \n-cold shower \n-no boredom\n\nThis is what helped me.\n\nu/WantToGetNoFapper, reddit"),
            Post(header: "NoFap and Stoicism for Success - Day 17", body: "'The object of life is not to be on the side of the majority, but to escape finding oneself in the ranks of the insane.' - Marcus Aurelius\n\nHope you're all doing well today, NoFap brothers and sisters. Keep fighting the urge and remember that you are far stronger than you think.\n\nu/YoHanan2442, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 18", body: "Day 18. A problemless day again. I did not have any real urges today. I kept myself very busy today. I just studied for three hours straight until 1am, so I'm going to sleep asap. I'm feeling good though.\n\nSee you tomorrow.\n\nu/Hellow11, reddit"),
            Post(header: "Day 18", body: "Still going strong. Saturdays are the best because I can live my life, see my friends and not have to deal with the stress of my job. Life is good, god is good, thank you guys.\n\nu/CrankLee, reddit"),
            Post(header: "DAY 18. IM BACK ON TRACK.", body: "Im proud to say that Im back on track. Day 18. After so many attempts I've finally passed the point where I usually lose.\n\nThe past attempts often end on me losing on days 12, 14 or 15. But now I have reached day 18. I am hoping that it gets easier from this point on. It might be a dangerous thing to be cocky this early, but I am at the very least proud that I've reached this point.\n\nI hope you guys are doing well too.\n\nu/DontEvenCareIfUDie, reddit")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Day 19. This shit works", body: "In the 19 days since i started no fap i have more energy, i am more confident, less social anxiety, talking more to girls. I feel stronger and more competitive. I beat up my abusive father. And finally won on a boxing sparring match. Also feeling more grounded and apreciating the little things in life. THIS SHIT WORKS\n\nu/teofurlong, reddit"),
            Post(header: "Day 19", body: "Hey guys.\n\nI don't know why its been so much harder for me in the past to give up this addiction, but right now its really really easy. Almost 3 weeks in and I feel better knowing that these urges don't control my life. I know its been harder for others but just keep persisting, it gets easier :)\n\nu/1nd333d, reddit"),
            Post(header: "Day 19: Today I beat my longest streak!", body: "Hey guys and gals. This NoFap journey isn't a easy one but it's so worth it! My longest previous streak was 18 days and today I made it to 19 days! I'm so happy that I've been able to stay this long but there is no way I'm slowing down! I'm gonna carry on and keep on fighting. My main goal is to beat this addiction, not for the benefits, they are a bonus, but to defeat addiction!\n\nStay strong everyone you've got this! 💪\n\nu/ChickenWing3105, reddit")
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
