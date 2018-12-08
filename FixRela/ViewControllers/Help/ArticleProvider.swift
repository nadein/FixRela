//
//  ArticleProvider.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

struct Article {
    let title: String
    let text: String
    let image: UIImage?
}

private struct Articles {
    // Titles
    static let fellTitle1 = "fell_title_1".localized
    static let fellTitle2 = "fell_title_2".localized
    static let fellTitle3 = "fell_title_3".localized
    static let fellTitle4 = "fell_title_4".localized
    static let fellTitle5 = "fell_title_5".localized
    static let fellTitle6 = "fell_title_6".localized
    
    static let inloveTitle1 = "inlove_title_1".localized
    static let inloveTitle2 = "inlove_title_2".localized
    static let inloveTitle3 = "inlove_title_3".localized
    static let inloveTitle4 = "inlove_title_4".localized
    static let inloveTitle5 = "inlove_title_5".localized
    static let inloveTitle6 = "inlove_title_6".localized
    
    static let marriedTitle1 = "married_title_1".localized
    static let marriedTitle2 = "married_title_2".localized
    static let marriedTitle3 = "married_title_3".localized
    static let marriedTitle4 = "married_title_4".localized
    static let marriedTitle5 = "married_title_5".localized
    
    // Images
    static let fallImg1 = UIImage(named: "fall1")
    static let fallImg2 = UIImage(named: "fall2")
    static let fallImg3 = UIImage(named: "fall3")
    static let fallImg4 = UIImage(named: "fall4")
    static let fallImg5 = UIImage(named: "fall5")
    static let fallImg6 = UIImage(named: "fall6")
    
    static let inloveImg1 = UIImage(named: "inlove1")
    static let inloveImg2 = UIImage(named: "inlove2")
    static let inloveImg3 = UIImage(named: "inlove3")
    static let inloveImg4 = UIImage(named: "inlove4")
    static let inloveImg5 = UIImage(named: "inlove5")
    static let inloveImg6 = UIImage(named: "inlove6")
    
    static let marriedImg1 = UIImage(named: "married1")
    static let marriedImg2 = UIImage(named: "married2")
    static let marriedImg3 = UIImage(named: "married3")
    static let marriedImg4 = UIImage(named: "married4")
    static let marriedImg5 = UIImage(named: "married5")
    
    // Articles
    static let fell1 = Article(title: fellTitle1, text: Texts.fell_art_1, image: UIImage())
    static let fell2 = Article(title: fellTitle2, text: Texts.fell_art_2, image: UIImage())
    static let fell3 = Article(title: fellTitle3, text: Texts.fell_art_3, image: UIImage())
    static let fell4 = Article(title: fellTitle4, text: Texts.fell_art_4, image: UIImage())
    static let fell5 = Article(title: fellTitle5, text: Texts.fell_art_5, image: UIImage())
    static let fell6 = Article(title: fellTitle6, text: Texts.fell_art_6, image: UIImage())
    
    static let inlove1 = Article(title: inloveTitle1, text: Texts.inlove_art_1, image: UIImage())
    static let inlove2 = Article(title: inloveTitle2, text: Texts.inlove_art_2, image: UIImage())
    static let inlove3 = Article(title: inloveTitle3, text: Texts.inlove_art_3, image: UIImage())
    static let inlove4 = Article(title: inloveTitle4, text: Texts.inlove_art_4, image: UIImage())
    static let inlove5 = Article(title: inloveTitle5, text: Texts.inlove_art_5, image: UIImage())
    static let inlove6 = Article(title: inloveTitle6, text: Texts.inlove_art_6, image: UIImage())
    
    static let married1 = Article(title: marriedTitle1, text: Texts.married_art_1, image: marriedImg1)
    static let married2 = Article(title: marriedTitle2, text: Texts.married_art_2, image: marriedImg2)
    static let married3 = Article(title: marriedTitle3, text: Texts.married_art_3, image: marriedImg3)
    static let married4 = Article(title: marriedTitle4, text: Texts.married_art_4, image: marriedImg4)
    static let married5 = Article(title: marriedTitle5, text: Texts.married_art_5, image: marriedImg5)
}

class ArticleProvider: NSObject {
    
    public func articleFor(category: DetailsCategory, indexPath: IndexPath) -> Article {
        switch category {
        case .fellInLove:
            return articleForFell(indexPath)
        case .inLove:
            return articleForFell(indexPath)
        case .married:
            return articleForMarried(indexPath)
        }
    }
    
    private func articleForFell(_ indexPath: IndexPath) -> Article {
        switch indexPath.row {
        case 0:
            return Articles.fell1
        case 1:
            return Articles.fell2
        case 2:
            return Articles.fell3
        case 3:
            return Articles.fell4
        case 4:
            return Articles.fell5
        case 5:
            return Articles.fell6
        default:
            print("no article")
            return Articles.fell1
        }
    }
    
    private func articleForInLove(_ indexPath: IndexPath) -> Article {
        switch indexPath.row {
        case 0:
            return Articles.inlove1
        case 1:
            return Articles.inlove2
        case 2:
            return Articles.inlove3
        case 3:
            return Articles.inlove4
        case 4:
            return Articles.inlove5
        case 5:
            return Articles.inlove6
        default:
            print("no article")
            return Articles.inlove1
        }
    }
    
    private func articleForMarried(_ indexPath: IndexPath) -> Article {
        switch indexPath.row {
        case 0:
            return Articles.married1
        case 1:
            return Articles.married2
        case 2:
            return Articles.married3
        case 3:
            return Articles.married4
        case 4:
            return Articles.married5
        default:
            print("no article")
            return Articles.married1
        }
    }
}

private struct Texts {
    static let fell_art_1 = """

"""
    static let fell_art_2 = ""
    static let fell_art_3 = ""
    static let fell_art_4 = ""
    static let fell_art_5 = ""
    static let fell_art_6 = ""
    
    static let inlove_art_1 = ""
    static let inlove_art_2 = ""
    static let inlove_art_3 = ""
    static let inlove_art_4 = ""
    static let inlove_art_5 = ""
    static let inlove_art_6 = ""
    
    static let married_art_1 = """
Why do couples argue?  Sure, there are the issues about money, sex, parenting and other commonly discussed topics.  It’s not about stopping arguments as research has actually shown that couples who argue effectively are in better shape than those who avoid conflict all together.  But we certainly can look at some of the foundational elements of security and ways that you can improve your relationships to argue more productively.  Remember, there’s a difference between productive arguments (where it is worked through without one or both feeling resentful) and unproductive arguments (where one or both feel hurt, angry and/or unresolved).

There are a few things you and your partner can work on to strengthen the foundation of your relationship which will also allow you to weather the storms of life, whether in your dynamic or external forces that can hammer at it.  Imagine a ship caught in a storm and the need for it to seek a safe harbor.  Try to consider your marriage in this way.  You both want to feel like the other can be a shelter in the storm of life.

3 Tips to Decrease Your Arguments

Challenge Your Assumptions:  Much of what couples get into tiffs about revolve around miscommunications.  One person feels hurt or angry by what they BELIEVE the other meant by something.  So often it’s not accurate.  Check in with your partner about what you assumed they meant.  Give them a chance to clarify what they meant.  If more couples made a habit of this, there would be far more relationship harmony.
Improve the Emotional Safety in Your Relationship:  Many couples have no idea what they are ultimately fighting about because they don’t feel secure with each other.  Not experiencing your partner as a safe haven leads to distress that can show up in a lot of ways.  Emotional safety is about feeling prioritized, respected, validated, loved…couples who have this basic foundation in place benefit with the sense of knowing that they are on solid ground together.  Get educated on the elements of a safe and secure relationship.  Make it a priority to know what each others emotional wounds are and be sensitive to them.
Take Responsibility Where it is Yours:  It’s easy to point the finger.  The real skill is being able to hold up a mirror to your own behavior and not only own it but offer a relationship repair if damage has been done.  The solution is to make a habit of asking yourself where your role is.  Mindful reflection on this matter can reduce blame and provide a more balanced perspective on a matter that may very well involve both partners.  The next step is to make an attempt at a repair with your partner.
"""
    static let married_art_2 = """
Happy marriages require some amount of effort to stay that way.  Those who believe their relationship can sustain the dizzying highs of their honeymoon phase early tend to be disappointed when life gets in the way.  We are born wired to connect and intimate relationships are particularly important to successfully attach early on.  This is why so many of us get doped up on the giddy brain chemistry of love in the beginning!  Alas, most of us can attest to the fact that the your brain and heart “on love” changes in time.  Ideally, you’ve securely attached in other ways to get you through this inevitable transition via a strong friendship, fondness and admiration for each other.

If you have found that your marriage isn’t what it once was, you’re not alone.  But this doesn’t mean there’s a problem!  This is where the people with the “marriage shouldn’t be work” folks can get into trouble.  If there’s an expectation that marriage and long-term relationships should be easy, there is a set-up for failure, especially when times get tough.  It can be far too easy to jump ship with this line of thinking.

Want a happy marriage?  Get back to the basics.

Remind yourselves of why you married in the first place.  Hard time can make us forget why we picked our partner in the first place.
Brush up on elementary communication techniques such as “I feel” statements, active listening and shaping your language in a softer way.
Get familiar with the elements of emotional safety; where couples feel heard, validated, prioritized and respected by each other (among other things).
Check in on your relationship balance.  Are you each getting time for the “you,” “me” and “we” of the relationship or marriage?
Are you each content with the logistics of your marriage or relationship?  Do you feel things are fair?
Be familiar and sensitive to each others childhood wounds.  They are likely areas that get triggered between you.
Discuss your goals; individual, marriage and family.  How do you both see the future together?  How can you support each other?
Many couples find themselves emotionally disconnected at various time in the relationship.  Those who are successful at navigating these rough waters, making repairs when needed and coming towards each other when things are uncomfortable tend to have a greater chance of getting through it.  If you get back to the basics as mentioned above, the foundation on which your marriage or relationship stands can only be more solid as you move forward together.
"""
    static let married_art_3 = """
It's much easier to share your thoughts, the intellectual information that is in your brain, than your feelings. Sharing the depth of your feelings that are in your heart takes emotional risk and courage. This makes you feel exposed and vulnerable, but, it is the very thing that will create closeness and connection in your marriage. By sharing what is in your heart with your spouse, you can achieve deeper intimacy.


How to Share Your Feelings With Your Spouse:
Recognize the difference between thoughts and emotional feelings. Thinking, also known as "cognition" is a process that occurs in our heads. It coveys what our thoughts and beliefs about something. Feelings, on the other hand, convey our emotional state and is often said to come from the heart. Feelings can also be physical sensations.
Use the 'I think vs. I feel' rule. If you can substitute the words 'I think' for 'I feel' in a sentence, then you have expressed a thought and not a feeling. For example, "I feel hurt" is correct because you would not say "I think hurt,' right? Someone might say, "I feel that he is a jerk" is incorrect. You "think" he is a jerk.
Name the feeling. Use a list of feeling words if this is difficult. Remember that feelings are one word: sad, angry, hurt, happy, overjoyed, embarrassed, and so on.
Describe the feeling by saying it or writing it in such a way that your spouse can experience your feeling to the same degree. One goal is to help your partner understand what it is like to walk in your shoes. You likely want empathy and understanding in return for sharing your feelings.
Verbalize these feelings with your spouse directly. Your spouse can't read your mind. He or she may pick up on your vibe, but they have no way to know what is in your head unless you disclose it!
Accept that feelings are neither right nor wrong. It is the behavior that results because of the feeling that is morally judged. Just because you are angry does not give you the right to be violent. Negative feelings still must be dealt with appropriately.
Accept that feelings come and go and change quickly. This is different than a "mood" which is a sustained period of an emotional state.
Try to not judge yourself or your spouse because of feelings. If you want your spouse to continue to share on this level, it is important not to get irritated or defensive about the feeling expressed to you.
Share your deeper underlying feeling, not just the surface feeling. You might be expressing anger but underneath feel hurt or embarrassed. This is much more crucial to express to your partner to develop closeness and intimacy.

Practice helps. If you are not someone who is used to expressing feelings, this may feel awkward at first. Practicing it in small steps will make it easier.
"""
    static let married_art_4 = """
You are not alone if you feel disconnected from your spouse.  You are also not alone if your marriage is “OK” but there’s a bit of a gap that has the potential to grow if unattended.  Marriages require work to keep them fresh, alive and connected!  Many don’t realize that and/or don’t have the tools to repair breaches when they occur.

What are some of the issues couples face leading them to feel so far away from their partners?  And what are some ideas about what can be done about them?

Poor communication skills.  Many simply don’t know how to talk to each other in a way that alleviates the chances of a build-up of resentment from hurt feelings and frustration.  Additionally, conflict avoiding couples tend to minimize the problems and sweep them under the rug.  But they always have a way of showing back up.  Even couples who aren’t afraid of conflict often do so in such a damaging way it only adds to the resentment pile!

Repair Tips:  In The Marriage Refresher Course Workbook for Couples, I walk couples through the basics of a strong marriage foundation with a strong emphasis on communication skill building.  If your relationship is high conflict then you may be better suited for a marriage counselor who can help you navigate through.
Resentment.  Typically, the more distance that exists in a marriage, the more likely unprocessed anger, frustration, disappointment and sadness exists for one or both partners.  I’ve heard couples in my practice say that if almost feels, “insurmountable.”  It’s actually possible to work through the mountain and reduce it to a manageable pile of dirt.

Repair Tips:  If you feel like your communication is good, you may be able to tackle some of the issues leading to the resentment on your own.  Each of you make a list of things you’re carrying hurt or anger around.  Remember, be selective!  What won’t be helpful is if you present each other with a laundry list of every incident of distress over the last five years.  Really hone in on the ones that carry the most emotional weight and are a current obstacle in your marriage.  Use “I feel” statements when sharing your issues rather than critical language.  Be sure to validate and provide empathy for each other and apologize where appropriate.  Take responsibility for your behavior.
Lack of forgiveness.  When an issue has come up in your marriage and there has been unsuccessful genuine repair attempts around it, you might actually have more of a forgiveness problem on your hands.  There are many reasons why some people struggle with forgiveness more than others but it’s important to know it can not only benefit the relationship but most importantly, yourself.  It takes a lot of energy to hold onto bitter feelings.  Forgiveness can do wonders for your emotional health as well.

Repair Tips:  Because forgiveness often ultimately rests with the individual (if every attempt possible to allow forgiveness in has been made by the offending partner), it might require a little personal growth work with an individual therapist.
Change and transition.  People change and so do marriages.  Circumstances, life phases, likes and dislikes can also shift for people through time.  A common complaint heard is, “She’s changed!”  or “He didn’t used to be like this before!”  Embracing change in a marriage can be a challenge and it’s also important to distinguish between natural changes and behavioral changes demonstrating less care for the relationship.  The latter can and should be addressed for the marriage to work.  A big challenge for many marriages is having children which inherently would impact intimacy and connection for the couple.  The bigger issue is do they reconnect eventually after children are born.

Repair Tips:  The first step in flowing with change is understanding that it’s a part of life.  If you allow each other to “be” rather than resist the change you will be more likely to transition well.  If the changes are around the treatment of each other, that’s another problem that may be more in the areas of communication, resentment or forgiveness.
Decrease in sexual intimacy.  There are many reasons sex can take a hit in a marriage.  Kids, time and exhaustion can all play a role in less time connecting on this level.  Of course there are medical and hormonal issues impacting libido and performance that must be ruled out.

Repair Tips:  A great workbook for couples to assist in this area is Passion, Sex and Intimacy:  Keep the Fires of Passion Burning in Your Relationship.  A sex therapist can also be highly effective in helping you find each other again.
Marriage can be one of the most rewarding experiences a couples can have if they have a safe, secure and loving attachment to each other, a “port in the storm” of life.  But there are a number of things that can inhibit that bond.  The good news things is that with a little effort, all of those things can be worked through if there’s a desire to do so.  As difficult as it can be, I find that the strongest marriages often have faced adversity together in the past.

They made it through.  Together.
"""
    static let married_art_5 = """
Do you and your partner ever dwell on the positive in your relationship?  Maybe you should.

It’s really easy to dwell on the negative in our personal lives and relationships.  The brain is wired to have a negativity bias.  In other words, it is more reactive to negative stimulii.  This being the case, it’s clear how this is one reason couples can get stuck in a negative loop together, quick to call out all the hurts, wrongs, imperfections and failures of each other in a very reactionary way.

As a relationship therapist, I often see this “negativity bias” in full swing when couples come to see me for help.  After hearing their concerns of all the things going wrong and the changes they would like to make, I always make time to explore what’s going right to assist them in accessing the positives in their relationship.  If they struggle to find anything currently positive, I ask questions about what brought them together initially.  I want us to spend a little time dwelling on the positive to help create a more balanced perspective of what their relationship really looks like.

If you’re having relationship problems, simply being aware of the human tendency to go to the negative provides you an opportunity to do something different.  You and your partner can work hard to push back a little on the negativity bias and focus on some of the positive things about each other, even little things that were done by each of you on a daily basis that might be overlooked.  This is a great place for appreciation and gratitude to be woven in to your relationship as well.

Tip  Commit to a few minutes a day discussing anything you can think of that’s going well together.  It might be something you really love about each other or a behavior done that had meaning.
Spend some time dwelling on the positive.  If your relationship is worth working on, this just might be the reminder you need to stay the course together.
"""
    
}
