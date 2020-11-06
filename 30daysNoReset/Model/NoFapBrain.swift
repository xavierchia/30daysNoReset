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
            Post(header: "Orson F. Whitney", body: "No pain that we suffer, no trial that we experience is wasted. It ministers to our education, to the development of such qualities as patience, faith, fortitude, and humility. All that we suffer and all that we endure, especially when we endure it patiently, builds up our characters, purifies our hearts, expands our souls, and makes us more tender and charitable, more worthy to be called the children of God."),
            Post(header: "Lailah Gifty Akita", body: "Pursue your dreams. You will be amazed about what you can achieve."),
            Post(header: "Rodolfo Costa", body: "Do not sit still; start moving now. In the beginning, you may not go in the direction you want, but as long as you are moving, you are creating alternatives and possibilities.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Daniel Wallace", body: "He believed in himself, believed in his quixotic ambition, letting the failures of the previous day disappear as each new day dawned. Yesterday was not today. The past did not predict the future if he could learn from his mistakes."),
            Post(header: "Nathan W. Morris", body: "The speed of your success is limited only by your dedication and what you’re willing to sacrifice"),
            Post(header: "Rollo May", body: "The relationship between commitment and doubt is by no means an antagonistic one. Commitment is healthiest when it is not without doubt, but in spite of doubt.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Maya Angelou", body: "You may encounter many defeats, but you must not be defeated. In fact, it may be necessary to encounter the defeats, so you can know who you are, what you can rise from, how you can still come out of it."),
            Post(header: "Bangambiki Habyariman", body: "Even if everybody says it’s impossible, with determination, there is always something you can do. The last thing is to give up without trying."),
            Post(header: "Greg Kincaid", body: "No matter how much falls on us, we keep plowing ahead. That’s the only way to keep the roads clear.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Ovid", body: "Dripping water hollows out stone, not through force but through persistence."),
            Post(header: "Louis Sachar", body: "It is better to take many small steps in the right direction than to make a great leap forward only to stumble backward."),
            Post(header: "Friedrich Nietzsche", body: "That which does not kill us makes us stronger.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Benjamin Franklin", body: "He that can have patience can have what he will."),
            Post(header: "H.G. Wells", body: "If you fell down yesterday, stand up today."),
            Post(header: "Gena Showalter", body: "Giving up is the only sure way to fail.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Thomas A. Edison", body: "I have not failed. I’ve just found 10,000 ways that won’t work."),
            Post(header: "Julie Andrews Edwards", body: "Perseverance is failing 19 times and succeeding the 20th."),
            Post(header: "Roy T. Bennett", body: "The one who falls and gets up is stronger than the one who’s never tried. Do not fear failure but rather fear not trying.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Franklin D. Roosevelt", body: "When you come to the end of your rope, tie a knot and hang on."),
            Post(header: "Dalai Lama XIV", body: "There is a saying in Tibetan, ‘Tragedy should be utilized as a source of strength.’ No matter what sort of difficulties, how painful experience is, if we lose our hope, that’s our real disaster."),
            Post(header: "Sarah Dessen", body: "Anyone can hide. Facing up to things, working through them, that’s what makes you strong.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Jeremy Aldana", body: "Seems to me that there is a fine line between insanity and dedication…I call that line commitment"),
            Post(header: "Theodore Roosevelt", body: "It is hard to fail, but it is worse never to have tried to succeed."),
            Post(header: "Haruki Murakami", body: "This is one more piece of advice I have for you: don’t get impatient. Even if things are so tangled up you can’t do anything, don’t get desperate or blow a fuse and start yanking on one particular thread before it’s ready to come undone. You have to realize it’s going to be a long process and that you’ll work on things slowly, one at a time.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Molière", body: "Trees that are slow to grow bear the best fruit."),
            Post(header: "Shannon L. Alder", body: "Great leaders get people to admit the truth because they know that dreams are buried under the lies they tell themselves, in order to feel okay with giving up."),
            Post(header: "Mahatma Gandhi", body: "Man often becomes what he believes himself to be. If I keep on saying to myself that I cannot do a certain thing, it is possible that I may end by really becoming incapable of doing it. On the contrary, if I have the belief that I can do it, I shall surely acquire the capacity to do it even if I may not have it at the beginning.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Franklin D. Roosevelt", body: "It is common sense to take a method and try it. If it fails, admit it frankly and try another. But above all, try something."),
            Post(header: "J.R.R. Tolkien", body: "From the ashes a fire shall be woken, a light from the shadows shall spring; renewed shall be blade that was broken, the crownless again shall be king."),
            Post(header: "A.A. Milne", body: "Rivers know this: there is no hurry. We shall get there some day.")
        ],
        [
            Post(header: "", body: ""),
            Post(header: "Napoléon Bonaparte", body: "Courage isn’t having the strength to go on – it is going on when you don’t have strength."),
            Post(header: "Vince Lombardi Jr.", body: "Once you learn to quit, it becomes a habit."),
            Post(header: "Marcus Aurelius", body: "You have power over your mind – not outside events. Realize this, and you will find strength."),
            Post(header: "Note from the creator", body: "Well done!🥳 You did it! If you have any app feedback or want to get in touch, drop me an email at xavier.cpy@gmail.com")
        ]
    ]
}
