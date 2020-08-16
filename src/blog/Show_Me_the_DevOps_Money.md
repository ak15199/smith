<!-- Origin: https://medium.com/@alexwking/beginning-devops-840338efc383 -->
<!-- Title: Show Me the DevOps Money -->


# Show Me the DevOps Money

## A Series on Beginning DevOps /part six

![“group of men running in track field” by [Jonathan Chng](https://unsplash.com/@jon_chng?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)](https://cdn-images-1.medium.com/max/8000/0*5YnEABKpSC6TB_TD)*“group of men running in track field” by [Jonathan Chng](https://unsplash.com/@jon_chng?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)*

*This is the final part in a six part series on [Beginning DevOps](/blog/Starting_Our_Journey.html), and follows [Keep it Simple](/blog/Keep_it_Simple.html).*

After all that work we invested, did it really make a difference? The answer is a resounding YES! Our Network Operations Center kindly kept track of things for us, and started recording change data for Spinnaker in the middle of 2016. You can see from the charts below that there was a huge impact in both number of changes, and confidence of change. Sadly, I no longer have data for mean time to repair, but it was several orders of magnitude smaller for the teams that embraced DevOps.

![Cadence comparison between traditional and DevOps production deployments](https://cdn-images-1.medium.com/max/2000/1*xnTNNO7AeO3OMpzSNemD-g.png)*Cadence comparison between traditional and DevOps production deployments*

![Change failure rate between traditional and DevOps production deployments](https://cdn-images-1.medium.com/max/2000/1*_YPpL_8lVQCOO5vEg3EYbg.png)*Change failure rate between traditional and DevOps production deployments*

There are two sides to this: change velocity in terms of feature development was certainly higher, but it’s not the whole story. Because developers can deploy faster, they can make smaller, incremental changes to their code and get faster feedback. This in turn means that their degree of certainty is higher, and their path to debug is far simpler.

But it’s not a fluke. Even if you’re not following the [State of DevOps](https://puppet.com/resources/whitepaper/state-of-devops-report) reports, another example comes from Capital One at the 2018 [Spinnaker Summit](https://www.spinnakersummit.com) who reported significant improvements from a similar initiative:

![](https://cdn-images-1.medium.com/max/2236/1*-72psxxEsdLo8uqQs3yUCw.png)

The line from [The Manifesto for Agile Software Development](http://agilemanifesto.org) that talks about *Individuals and interactions over processes and tools*, DevOps as a culture is about reducing the cycle time from a developer making a commit to understanding the correctness of that change. With this cycle time reduced, there will be a corresponding increase in velocity of the value stream.

Just like most things that are worthwhile, this isn’t going to be quick or easy to get right, but the benefits to the organization are many-fold.

This series of articles have covered more of the high level *how* from a people perspective, rather than the technical *what*. This is deliberate, as although technology changes over time, bigger ideas (probably) don’t. Or at least change less. As time permits, I’m hoping to write a few more articles on some of the more technical specifics, and you can also check out the [Gogo Tech Blog](https://tech.gogoair.com) for some insights into the work of the team.

The journey was one of experimentation. We made a bunch of mistakes along the way, dusted ourselves off, learned, and moved on. We managed to achieve this not just as a team writing tooling for developers, but across the whole of the technology organization. It was a truly remarkable thing to be a part of, and I’m indebted to everyone who shared the journey. If you’re reading this and have found that an alternative approach worked for you, then I’d love to hear more about your path and your experiences.

Good luck, watch out for group think and other [cognitive bias](https://twitter.com/Chuck_Moeller/status/944290830428274689) in yourself and others, and stay on the mission!

___

_This article originally appeared on [Medium](https://medium.com/@alexwking/beginning-devops-840338efc383)._

