<!-- Origin: https://medium.com/@alexwking/beginning-devops-ef874025960c -->
<!-- Title: Change is Hard -->


# Change is Hard

## A Series on Beginning DevOps /part two

![“assorted-color lear hanging decor” by [Chris Lawton](https://unsplash.com/@chrislawton?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)](https://cdn-images-1.medium.com/max/12000/0*Frhpx0VzrawUu0sp)*“assorted-color lear hanging decor” by [Chris Lawton](https://unsplash.com/@chrislawton?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)*

*This is the second part in a six part series on [Beginning DevOps](/blog/Starting_Our_Journey.html).*

As a DevOps believer or aficionado, you can talk about silos, [yak shaving](https://seths.blog/2005/03/dont_shave_that/), toil, velocity, outage reduction, ticket elimination, deployment cadence, and all that stuff as much as you like, but the chances are that not everyone will get it. Depending on a bunch of things, there’s a chance that only a few people will get it. Perhaps worse: people will say that they get it, but not really comprehend what it means.

It’s understandable, of course: organizations go through a natural evolution over time, and end up stabilizing and re-enforcing their beliefs with [group-think](https://en.wikipedia.org/wiki/Groupthink). They tend to believe that what they have is normal or the best practice, and pat themselves on the back because they have a great process for managing outages, or a change control board to help ensure safe, compliant change. It’s normal.

If you open with telling someone who is emotionally invested in these existing paradigms that their lives could be so much better, and they could accomplish so much more in their working day, then it’s likely that you’ll be labeled as not understanding how complicated things are here at best, or reckless at worst.

Generally speaking, I like to talk about how DevOps is about how we enable software developers to get faster feedback on changes and ultimately deliver incrementally greater value to the business. But that’s only part of the story. The truth of the matter is that there are a lot of ancillary functions and silos in an organization that stand to benefit enormously from these changes through the elimination of low-value/high cognitive load work: it’s about people and how to make their lives better.

### Start with the Tooling

Start with the tooling, and start it *fast*. Up until the point where you can demonstrate what’s possible, you’re going to struggle with conversations because you risk fighting deeply entrenched belief systems with what appears like fantasy.

The sooner you have tooling in place that can demonstrate having code running in production literally minutes after a commit is made, the sooner people will begin to see what’s possible. Imaginations will be fired.

To accomplish this, you’ll need either help or experience, but that’s a story for another day. If you stay focused, then within two or three months you should be able to demonstrate how every commit to a given repo will automatically result in a deployment. This will require an investment in dedicated, highly skilled technical staff, as well as some cloud costs and potentially some software licenses. But it’s manageable.

While you’re doing this, avoid the temptation of back-porting the cool stuff to your legacy tooling. This is incredibly important: the transition works by building *compelling solutions* where there is a high polarization in effectiveness between how things are done and how they should be done. The idea of back-porting undermines the gains that you’re looking for.

Simply having the tooling in place to welcome volunteers requires net zero change for the organization, but it makes a great conversation starter.

### Listen

You’ll have some time while the tooling is being built. Use this wisely. Just as if you’re a political candidate vying for a seat at the next election, it’s important to listen to your voters to see what’s going on in their minds. What do they love? What are their challenges? How can you help?

Determine your stakeholders. Unless your sales model is some kind of DevOps-as-a-Service, chances are that your business partners aren’t on the list, except out of courtesy: as software professionals, we are responsible for the how. But, of course, it depends on your circumstances. At the very least, though, it’s important that everyone has an inkling of the direction and goals whether they are a stakeholder or not: the rumor mill can be horrible during this time, and it’s important to minimize [FUD](https://en.wikipedia.org/wiki/Fear,_uncertainty_and_doubt).

Spend time observing day-to-day ritual, process, and events experienced by teams. Although everyone might not know that they’re experiencing a high degree of yak shaving, you do (right?). The ability to express to teams that you understand what they’re going through with examples will be invaluable later. If you like, you can go through a [Value Stream Mapping](https://en.wikipedia.org/wiki/Value_stream_mapping) exercise early on in the process to demonstrate the overheads and delays involved in the more traditional process that your company uses.

### Build Advocacy

While you were out talking to people, you’ll find at least a handful who are frustrated with the amount of time that it takes to deploy, or the number of hoops they have to jump through in order to effect a change, or… something.

Demonstrate the tooling to them, and show them how much better things can be. If you’ve done your job right, then you’ve just demonstrated compelling value. These people become your advocates.
> “Dictating a cultural change rarely works. You have to do it by example”
>
> — Dennis Bowne, CapTech Principal

Don’t pick that first team based on business need, rather choose a team that is enthusiastic about working with you closely to onboard successfully. Ideally pick something that’s low risk where you can take time to learn before moving on. That being said, if your first target team is engaged *and* there’s a potential strong business win with relatively low risk, then even better.

Don’t even think about on-boarding that large, monolithic legacy application that should have been killed years ago, but look to modern micro-services that will scale efficiently using the infrastructure provided by your cloud vendor. This doesn’t mean that you make wild compromises to build something custom for them, but it does mean that you drive towards best in class tooling that can be shared ubiquitously by many teams.

With one team on board, you’ll start a groundswell. Others will see the immediate benefits of independence, and they will want in. Within a short amount of time, you’ll find that the conversation has moved from *Why do we need this?* through *We need this! *to* Why can’t you make it faster?*

### Manage Fear

Along the way, you’ll encounter people who don’t understand where you’re taking things, or why. Perhaps they are acting out of fear for loss of their position as their job is automated away, perhaps they see a loss of control and a reduction in their ability to influence.

If you’re lucky, these individuals will be open to a conversation, at which point you can talk about how *reduction in toil* applies to them. If so, then you can work with them on negotiating a vision where they understand how much more value they will be able to provide, and how this will inevitably assist their career. If you’re unlucky, then the trauma won’t be as obvious, and you’ll have to look for ripples in other parts of the organization and trace back.

Every situation will be different, but it’s important to be on the watch for these behaviors, and act in a timely way: the consequences of not doing so can make your life significantly harder.

### Seek Executive Sponsorship, But Avoid Making it a Gating Factor

There are different levels of sponsorship, the most common that I’ve seen are:

1. You already have the team and a lot of the skills and ability to deliver. Great: you’re the sponsor and you have the resources you need to get started.

1. You’re hired to get this thing DONE. Which is perhaps the easiest, assuming you and your management see eye to eye on approach. Under these circumstances, you will soon have the resources on hand to execute. It’s all on you, buddy!

1. Some other team is responsible for the tooling, but your management tells you to stay away. This is a little harder, and you’ll have to carefully evaluate your degree of confidence in the other team’s ability to both execute, and support you. You’ll also have some risks around difficult conversation with your management should the endeavor succeed or fail. Good luck in figuring it out.

1. Your management either doesn’t understand the value or benefits of the transition to a DevOps culture. This is a really hard spot to be in. Hopefully you can work with them on agreeing approach and timing, and there will likely be some negotiation required. If you can’t gain any traction, though, then you’ll have to decide whether the other aspects of the job make it worthwhile sticking around, or whether you’d rather *feed the hungry* and expend your energy more productively elsewhere.

### Build Community

It’s possible to build community too soon. There’s a decay curve around motivation, education, and excitement for this new world: go in too soon and you’ll be taken as all-talk. So it’s important to pace how (and what) you communicate.

If you feel as though the groundswell and excitement are developing even ahead of the tooling being ready, consider setting up a discussion or special interest group for people to come along and share their ideas. This industry changes at such a fast pace, that you may even learn something significant along the way that will change how you think of the work that you’re undertaking.

As the tooling takes on tenants, and those tenants become adept at running their own pipelines, you’ll find that pockets of expertise develop. These experts will be vital to your success, so make sure that you nurture them. The truth of the matter is that if you’re providing technical support to a hundred or more developers, and responding to beginner questions for half of your day, then you’ll quickly stop making forward progress, so it’s vital that each of the on-boarded teams have advocates and experts that can act as your first line of defense.

A related thing that worked for us to reduce distractions was to hold *office hours* a few times each week. This was a great setting for developers to come and discuss their problems first-hand and work through solutions in a predictable, constrained manner. Office hours are also a great gate to ensure that developers have the opportunity to think through the problem sufficiently, or talk with their [rubber duck](https://en.wikipedia.org/wiki/Rubber_duck_debugging) to solve independently.

In the medium term, you’ll know that you’ve succeeded when you have a community of developers who help one another out, aren’t afraid to send you merge requests for fixes or feature enhancements, and become part of the conversation around how to make the tooling even better.

Coming Next: [Not Everyone Gets It](/blog/Not_Everyone_Gets_It.html).

___

_This article originally appeared on [Medium](https://medium.com/@alexwking/beginning-devops-ef874025960c)._

