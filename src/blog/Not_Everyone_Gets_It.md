<!-- Origin: https://medium.com/@alexwking/beginning-devops-17b15f3b879 -->
<!-- Title: Not Everyone Gets It -->


# Not Everyone Gets It

## A Series on Beginning DevOps /part three

![“short-coated white and brown dog” by [Agatha](https://unsplash.com/@elvirafdec?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)](https://cdn-images-1.medium.com/max/11520/0*KW8TCyfPfI6gl8tU)*“short-coated white and brown dog” by [Agatha](https://unsplash.com/@elvirafdec?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)*

*This is the third part in a six part series on [Beginning DevOps](/blog/Starting_Our_Journey.html), and follows [Change is Hard](/blog/Change_is_Hard.html).*

We talked earlier about how change can be hard, and without any doubt, things won’t go perfectly from day one.

As you’re working on your transition, think about the different ways that you can help ensure that your message is being heard.

### Be Prepared to Repeat Yourself

Saying it once doesn’t mean anything. Sometimes saying it twice doesn’t mean anything. It’s okay: the concepts that you’re talking about can be hard to comprehend, and it takes time. Be patient.

### Be Collaborative, But Don’t Be Afraid to Call Bullshit

I’m really not a big fan of the words “troublemaker”, or “[Luddite](https://en.wikipedia.org/wiki/Luddite)”, and it’s going to be your responsibility to prove yourself that this transition is worthwhile. You can even recommend that people go to related conferences like Velocity, local DevOps Days, or your regional DevOps Enterprise Summit. At some point, though, it’s important to work with them on the root of their concerns and have difficult conversations.

### Build Trust

Trust doesn’t usually come overnight. Some people have a high default level of trust, and will go along with what you’re saying, others will not. Some of this is about conversation and understanding each other’s perspectives, but it may be that you can truly only gain trust as you start to deliver on promises, and people see the fruits of the transition first-hand.

### Bring the Organization With You

Really, just communicate. Make sure that the company leadership understands what you’re doing, and make sure that you’re announcing and celebrating wins as broadly as you can as they come about. This is something that I wish I’d done far more extensively.

### Be Multi-Modal

People ingest ideas differently. Research suggests that there are a number of distinct [modes](https://en.wikipedia.org/wiki/Multimodality) of learning, such as Visual (what you see), Textual (what you read), Linguistic (language), Spatial (what you experience), Gestural (visible body actions), and Aural (what you hear).

Additionally, a [medium](https://en.wikipedia.org/wiki/Media_(communication)) is the substance (such as video, text, image, audio) in which meaning is conveyed.

Crucially, different people learn in different ways, so it’s important to provide a mix of modes and mediums when conveying messages. Consider 1:1 conversations, presentations, demo videos, and workshops, for example.

This holds true not just for the initial transition to a full-on DevOps culture, but it’ll continue even as the tooling reaches a relatively steady state: new consumers will onboard over time, and it’s important to be there to support the modes and mediums that they need to be successful.

### Express Empathy

There are people whose lives will be impacted positively from day one, but there are also those whose careers will be called into question as they realize that their job is changing, that they may not be as integral to the software delivery workflow as they are today.

Basically, don’t be a jerk. Listen to what they have to say. Explore ideas with them around what they would do if there wasn’t so much toil in their lives, or the things that they hate about their jobs that will go away. I haven’t come across an individual that wouldn’t be more fulfilled in the long-term with a DevOps transition, but it’s not always obvious when you’re the perceived victim. Some may resist change, trying to cling on to the safety of what they know.

### Shared Responsibility

As developers begin to use the tooling, they will make mistakes.

We had one team that took three production outages before they realized that deploying code wasn’t the same as the old days: nobody was validating success or failure for them, and they didn’t have monitoring in place to alert them if something went wrong. That’s 50% of the outages that the company experienced over 18 months from one team within a few weeks. It took a little while to coach them on how to validate their deployment and teach them how easy it is to roll back in the event of a bad change.

But there are other ways things can go wrong: for example, developers might unwittingly make a breaking change to an API that one particular previously unknown consumer is using… which is why I’d rather use explicit (whitelist) permission to internal APIs rather than implicit (blacklist). Alternatively, of course, they may just break it for everyone.

Conversely, it’s also important for teams to figure out how to decouple services as much as possible so that when changes are made to a particular service, the risk of impact to everyone else remains small. Susan Fowler’s book on [Production-Ready Micro-services](https://www.amazon.com/Production-Ready-Microservices-Susan-Fowler/dp/1491965975/ref=sr_1_1?ie=UTF8&qid=1540495846&sr=8-1&keywords=Production-Ready+Microservices) has some great insight on this.

The net is that it’s important to ensure that teams understand how to be good citizens and that others are relying on them to make good decisions.

### Zero Unicorns Killed

This transformation isn’t magic, but it’s easy to see it that way. There are a lot of things that a cultural transition to DevOps won’t give your organization, for example:

* Unit, contract, and integration tests will not write themselves

* Availability is typically significantly higher, but going multi-region won’t come for free

* It’s possible to standardize the way that some logs and metrics are generated and collected, but thought still needs to be put int application telemetry and observability

* Poor design and architectural decisions will still be poor design and architectural decisions, as will poorly implemented code

It’s important to level set early on so that everyone understands their responsibilities… broad participation is required for a transition to be successful. You may even find — depending on the origins of the team that delivers your pipeline tooling — that they are still looked upon as “the operations team” by some of the staunchly old school developers.

Coming Next: [Where to Start](/blog/Where_to_Start.html).

___

_This article originally appeared on [Medium](https://medium.com/@alexwking/beginning-devops-17b15f3b879)._

