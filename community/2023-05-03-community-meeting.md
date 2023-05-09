---
title: 2023-05-03 Community Meeting
authors: [brooks]
tags: [community, meeting]
description: Agenda, notes, and recording for the 2023-05-03 community meeting
---

import ReactPlayer from 'react-player/youtube';

### Agenda

- (DEMO) SigScale rating actor demo from Vance
- wadm 0.4 release update
- Cosmonic devpost hackathon winners - the cool wasmCloud bits
- [wash command structure rework RFC](https://github.com/wasmCloud/wash/issues/538)
- [wasmCloud Documentation structure rework](https://github.com/wasmCloud/wasmcloud.com-dev/pull/75)
- Brainstorm: Handling secrets in link definitions / provider configuration
- If time: wasmcloud-rpc RFC

<!--truncate-->

### Meeting Notes

#### wadm 0.4 release update - Taylor

- Last week we showed a demo of Wadm working. As usual there has been a lot of activity in the Wadm repo. 0.4.0-alpha.2 includes a few fixes to allow manifests to be less verbose
- We are working on fixing a few things around status, scaling and algorithms.
- We're also running e2e tests and updating docs. Thank you to the community for the support.
- 0.4 release will come after these fixes.
- You can run Wadm in any style - release page shows we have the archs in there - raw binary. Then in terms of packages we have a docker image, also. Canary and release tags included.
- Recommend running Wadm through wash app support - recently merged. `wash v0.18.0-alpha.1` will be released soon for testing

#### Cosmonic DevPost hackathon winners - the cool wasmCloud bits - Brooks

- We'd love to call out some of the submissions that came through and get them contributed as wasmCloud examples.
- The winner, Dog the Bug Hunter, not only created their own actors but 2 capability providers including their own custom contract for Surreal DB.
- Our runners up featured two examples of AI engineering in Cosmonic:
  - Dr. Write - makes completing research papers quick and easy by automating the reference attribution process.
  - MeXtension is an AI-powered chat bot, designed to make messaging even more easy! Imagine having in-app messaging translation!

#### wash command structure rework RFC - Brooks

- wash has been around for a couple of years and has many breaking changes, We've seen feedback that the subcommands feel complex - wash control, git inventory, guest ID etc - there are a lot of poor subcommand-nested items,
- Subcommands are not properly contextualized. To resolve this, we put together a short RFC around reworking the command structure.
- This doesn't change the use of wash but we now have organization around main responsibilities - generate, build, deploy, interact; bootstrapping + managing settings; wasmCloud cache etc,
- Take a look for yourself at the RFC: https://github.com/wasmCloud/wash/issues/538, feel free to leave comments.
- Great feedback from Stephen and Bailey = thank you! Everyone is welcome to comment on this RFC, especially if you've used a tool you really like.

#### wasmCloud Documentation structure rework - Kevin

- We needed to make docs more accessible - the user journey currently isn't accessible enough and there was not a clear path through documentation.
- We've tried to consolidate the various pieces and male sure the detail is where you need it.
- A progressive build up of knowledge rather than all the detail up front.
- The idea is this should be the experience of going from hello world to building real applications will be much better.
- This structure is now live! Check it out https://wasmcloud.com/docs/intro

#### Brainstorm: How do we handle secrets in link definitions / provider configuration

- Check out the call recording for the brainstorm section of the call.

### Recording

<ReactPlayer url='https://youtu.be/EG_a6OTp5E0' controls />
