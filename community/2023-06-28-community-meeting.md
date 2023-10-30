---
title: 2023-06-28 Community Meeting
authors: [brooks]
tags: [community, meeting]
description: Agenda, notes, and recording for the 2023-06-28 community meeting
---

import ReactPlayer from 'react-player/youtube';

### Agenda

- DEMO: System information provider
- DISCUSSION: Link names, when to use them, and other use cases
  - Specifically, I want to talk about the use cases we've designed link names for, and what use cases they don't work with today.
  - I'd like to brainstorm ways to make link names easier to use and see if we can expand the use cases that they are meant for.

<!--truncate-->

### Meeting Notes

- DEMO: System Information Provider - Taylor
  - We created a new experimental contract/provider that can be used for a host of things but, in this case, we'll show its system monitoring capabilities.
  - It's particularly interesting to see how it integrates with the wasmCloud ecosystem.
  - This is a simple contract which handles metrics and events that actors can implement.
  - Classic system metrics - CPU performance, host name, UUID, current memory and other usage for example - basic stuff.
  - Now we can think about adding the data in the host itself. Running and measuring data from the host is an opportunity.
  - We can also do this with Prometheus and use the data to trigger conditions, to call the control interface for you or integrate with wadm
  - The example Actor comes in, takes the data and republishes on NATS. Simple but effective.
  - This is not limited to one host - 2nd host/washboard is easy to connect.
  - We can start these on any host that will allow you to measure metrics.
  - Why? Issue remediation, needs-based resource allocation.
- DISCUSSION: Link names, when to use them, and other use cases. Key Points (check out the recording for the full discussion):
  - Refer to the [link definition documentation](https://wasmcloud.com/docs/concepts/runtime-linking/link-definitions) for more detail
  - If you're not familiar with link definitions, essentially, this is runtime configuration between actors and capability providers.
  - Link definitions allow an actor to interact with a capability provider and add some configuration.
  - For example, our HTTP server port which listens to HTTP requests.
  - When we create a link definition we need some information - contract ID, public key, link name of the capability provider.
  - Link definitions are not yet robust but there are a number of discussions happening in the community worthy of thought.
  - Link names are super useful in allowing multiple copies of the same capability provider.
  - You can completely separate instances with different configurations or isolate your instances.
  - Why is this useful? You can have two separate endpoints for the same actor which is important when scaling.
  - When scaling capability providers, we may need custom load-balancing and a different set of endpoints.
  - This gives us the flexibility to define different configuration and isolation requirements e.g. NATS inbound vs outbound.
  - When are they appropriate, how are people using them, how can we identify and capitalize on different use cases? Listen to the recording for a lively and informative discussion.
  - Takeaway from this discussion is to approach link names with use cases in mind. The use case that we're certain we need to address is the ability to know what link names the actor needs to use _without_ inspecting the code, and this may start with including them in the claims list.

### Recording

<ReactPlayer url='https://www.youtube.com/watch?v=zT_HUMusMx8' controls />
