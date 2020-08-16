<!-- Origin: https://medium.com/@alexwking/beginning-devops-705d93609509 -->
<!-- Title: Where to Start? -->


# Where to Start?

## A Series on Beginning DevOps /part four

![“men's blue backpack” by [Jonathan Klok](https://unsplash.com/@mostly_brave?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)](https://cdn-images-1.medium.com/max/11232/0*HtqEO92KUQdlsJGz)*“men's blue backpack” by [Jonathan Klok](https://unsplash.com/@mostly_brave?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)*

*This is the fourth part in a six part series on [Beginning DevOps](/blog/Starting_Our_Journey.html), and follows [Not Everyone Gets It](/blog/Not_Everyone_Gets_It.html).*

### Understand End State in Broad Brush Strokes

You won’t know all the details going in to it, but it’s important to know some high level stuff, like:

* What will the software development life-cycle ultimately look like for developers in this new world?

* What limitations are you aware of going in to this that will constrain choices in the design of the tooling?

* Which cloud provider are you going to use? Do you need multi-cloud?

* What level of down time is your company realistically comfortable with, understanding that zero downtime isn’t realistic?

* What languages, frameworks, and technologies might you look at to deliver services in the future?

Spoiler alert: you *probably* don’t need multi-cloud.

### Seek Help

It’s unlikely that you can get this right alone. Look for an energized, talented, and open-minded set of individuals to help you on your path.

If you’re going into it fresh, then there are a huge number of ways you can get this wrong. To get an idea of what I’m talking about, do a google search for “DevOps fail”.

Because this was new to us, I knew that there was a lot that I wouldn’t know first time through, and I’d make expensive mistakes. Because I didn’t want to spend the first six months working on prototypes and learning from our mistakes, we asked [Kenzan Media](https://kenzan.com) to tell us everything we didn’t know, and I’d do it that way again: it was important that the team learned from first principles all the way up in order to develop a sense of ownership and expertise in the services we were challenged to deliver.

### Cloud Native or “Lift and Shift”?

I think it really depends on what your objectives are. If you want to boast that you’re “in the cloud” with minimum investment, and want to keep your traditional development and operational procedures, then there are plenty of tools and companies that can help you lift and shift your existing servers and applications into the cloud.

The down-side of this, of course, is that it doesn’t help you on your DevOps journey, it just gets you into the cloud. Additionally, because you’re likely not using the on-demand features of your cloud provider to any significant degree, you should also expect your costs to go up using this model.

Similarly, whereas it’s possible to do some aspects of DevOps in the data-center, it’s only possible by turning the data-center into your own private cloud, and the overheads and disadvantages of this are enormous. If this is something that’s being asked of you, then be cautious. You may be presented with arguments around EBITDA, which I feel are more of a reason to have a serious conversation with your CFO (just review the extensive information on the Internet about this first!) rather than take short-sighted action.

The alternative is to think [cloud native](https://stackify.com/cloud-native/). Perhaps you’ve already started writing micro-services with a traditional deployment model (which is a great start), or perhaps you’re already considering [serverless event driven architectures](https://medium.com/@cuelogicTech/event-driven-serverless-architecture-using-aws-lambda-6aef8d52ba80). But truly, it’s nigh-on impossible to accomplish DevOps culture without writing software differently.

![](https://cdn-images-1.medium.com/max/2000/1*puN10PZJuGfFNNxh3OgvqQ.gif)

A lift-and-shift approach will give you access to some cool features of the cloud, but this risks taking you deeper in the hole as your operations team manually provisions yet more bespoke infrastructure. It also won’t solve any of the problems of long-duration, complex coordinated deployments, and will leave you with a high risk of error. Remember that if you take the lift-and-shift approach, it’s a distraction that means you’ll likely need to start over from the ground up for your DevOps transition.

Yes, you could containerize existing services and deploy them through the pipeline that you’ve built, but ask yourself how many of the DevOps wins that you’ll see as a consequence (like the above list, or ubiquitous observability, or short feedback cycles, or…).

Since the dawn of humanity, there have been many disruptive technologies introduced to the world, and cloud computing is one of the latest. It is truly an enabler for the fundamentals of DevOps. A rethink and significant investment in the way software is written will be required in order to support DevOps as a culture. It’s not easy or quick, but the benefits are astounding.

### What Should We Work On Next?

It can be really daunting starting from nothing and looking at how much you have to accomplish. There are always trade-offs, but think about:

![](https://cdn-images-1.medium.com/max/2728/1*zYNolL4xW7QgRMGeuprNnQ.png)

In our case, we felt the need to get everything right from the ground up, so we started on creating a build account in AWS, adding in Terraform, connecting to Active Directory, then GitLab, and bootstrapping our way from there. This meant that sometimes there was a little do-over work as the tooling improved… for example we were ultimately able to deploy Spinnaker with Spinnaker, but it didn’t start that way.

### Stay Focused on the Mission

There will be a lot of distractions: new cool technologies that promise to give you an incremental bump in efficiency, the VP from that other department who really needs help, and so much more.

No real advice here, except it’s vital that you think very carefully about priorities and make sure that you are continuously making progress toward the goal and staying focused: the consequences of distraction can be catastrophic.

### Create Compelling Solutions

It’s a ridiculous thing to tell someone that they shouldn’t build a thing that nobody will use. It’s obvious. But how to you ensure that the inverse holds true? We found that there was huge value to doing what we did and within a little while, everyone wanted in.

Part of this was because there was huge polarization between what was in place and what we were building, and we opted not to back-port any of our tooling to the data center (which would reduce the polarization and consequently make the transition less attractive to developers).

But it doesn’t end there. For each of the initiatives that your team undertakes, think about how you can build something that people will find of high value and easy to adopt. The more you eliminate complexity from their lives, the more likely the things you create will get used.

### Feed the Hungry

You can waste a lot of energy trying to convince people that the changes you’re delivering on is a good thing. A degree of that is important, but sometimes it just takes a little while for late adopters to get it. That’s okay.

Conversely, you’ll find that you and your team will be far more productive working with those who are enthusiastic about the promise of the new world.

### Celebrate Wins

This isn’t going to be easy. Your team (and the broader technology organization) are going to be subject to a lot of change. Make sure that you’re there for them every step of the way, giving credit where credit is due, and helping where things get hard and celebrating success.

### Empower Your Team

As a smart individual, you can accomplish a lot. However, you’ll get exponentially better results by instilling a sense of DevOps culture into your team: coach and empower them to become owners: they will make better decisions at higher velocity than you ever could by telling them what to do.

Coming Next: [Keep it Simple](/blog/Keep_it_Simple.html).

___

_This article originally appeared on [Medium](https://medium.com/@alexwking/beginning-devops-705d93609509)._

