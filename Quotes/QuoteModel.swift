//
//  QuoteModel.swift
//  Quotes
//
//  Created by Mihai Leonte on 11/27/17.
//  Copyright © 2017 Mihai Leonte. All rights reserved.
//

import GameKit

struct QuoteModel {
    let quotes: [String] = [
        "Life is about making an impact, not making an income. --Kevin Kruse",
        "Strive not to be a success, but rather to be of value. –Albert Einstein",
        "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.  –Robert Frost",
        "You miss 100% of the shots you don’t take. –Wayne Gretzky",
        "I've missed more than 9000 shots in my career. I've lost almost 300 games. 26 times I've been trusted to take the game winning shot and missed. I've failed over and over and over again in my life. And that is why I succeed. –Michael Jordan",
        "The most difficult thing is the decision to act, the rest is merely tenacity. –Amelia Earhart",
        "Every strike brings me closer to the next home run. –Babe Ruth",
        "Definiteness of purpose is the starting point of all achievement. –W. Clement Stone",
        "We become what we think about. –Earl Nightingale",
        "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails.  Explore, Dream, Discover. –Mark Twain",
        "Life is 10% what happens to me and 90% of how I react to it. –Charles Swindoll",
        "The most common way people give up their power is by thinking they don’t have any. –Alice Walker",
        "Winning isn’t everything, but wanting to win is. –Vince Lombardi",
        "I’ve learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel. –Maya Angelou",
        "People often say that motivation doesn’t last. Well, neither does bathing.  That’s why we recommend it daily. –Zig Ziglar"
    ]
    
    func getRandomQuote() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: quotes.count)
        return quotes[Int(randomNumber)]
    }
}
