---
title: 2023-07-26 Community Meeting
authors: [brooks]
tags: [community, meeting]
description: Agenda, notes, and recording for the 2023-07-26 community meeting
---

import ReactPlayer from 'react-player/youtube';

### Agenda

- DEMO: wit provider [nats-messaging](https://github.com/thomastaylor312/nats-messaging-wit) from Taylor
- DISCUSSION: wadm wasmCloud introduction, 0.5.0 roadmap

<!--truncate-->

### Meeting Notes

- **Status update - moving to WIT**
  - Background; we have a new PR in the wasmCloud/wasmCloud repo around capability provider SDKs for Wasm providers - specifically for generating them with wit IDL interfaces.
  - Visit this interesting PR if you want to see the codegen behind the wasmCloud SDK [PR](https://github.com/wasmCloud/wasmCloud/pull/396).
  - This focus exemplifies our drive from Smithy to wit.
  - If you'd like to see the example of the provider SDK, you can look at Taylor's repo [https://github.com/thomastaylor312/nats-messaging-wit](https://github.com/thomastaylor312/nats-messaging-wit) for nats messaging with wit. This is using the new repo for providers. you can take a look and see the messaging contract.
  - Actors can make requests and publish operations.
  - From this wit messaging interface there is a world - we'll cover worlds in future weeks.
  - The real benefit is the new code is really simple - we instantiate a new handler and, for each of the ops you can invoke, there is a trait and the method can be implemented by a specific capability provider.
  - As we move forward, we will look to change wasmCloud 1st party providers.
  - Roman created an issue milestone in the wasmcloud/wasmcloud repo [witify](https://github.com/wasmCloud/wasmCloud/milestone/6). Using all wit contracts for all capability providers and contracts, Roman has outlined a couple of small tasks to get to this milestone.
  - All the functionality of wasi-cloud will be integrated into wasmCloud, and custom contracts will work with wasifills.
  - Watch the recording for a longer discussion on this subject and catch Taylor's demo at the next meeting.
- **DISCUSSION: wadm wasmCloud introduction, 0.5.0 roadmap**
  - We started cutting alpha for Wadm 0.5. These are new features that are minor breaking changes so we're cutting an early release.
  - Multi-tenant flag fixes. Multi-tenant mode allows a Wadm instance to monitor multiple lattices.
  - There is a wasmCloud in production guide under the [wadm section](https://wasmcloud.com/docs/fundamentals/wadm/deploying#configuring-credentials) - talks through the process of working with NATS clusters.
  - Couple of issues we'd like to get into 0.5 release candidate:
    - Logic to validate manifests. When we put a manifest together for a new app we should be able to do some validation within Wadm itself.
    - Dynamic status view: status view is static right now - change to allow us to see if our Wadm app is fully-deployed, failed etc.
    - Support version upgrades: you can't set up an app in Wadm then upgrade your version Wadm...yet. Wadm currently does a simple comparison of public keys and requires manual stop. We'd love for Wadm to be able to handle upgrades.
  - Brooks will have a more fulsome demo in the coming weeks.
  - If you're interested in contributing to Wadm we have a couple of issues that are marked as [good first issues](https://github.com/wasmCloud/wadm/issues).
- **DISCUSSION: Meetups!**
  - Liam has created a helpful digest of two fantastic events we'd love to see you at! The Linux Foundation's new WebAssembly conference, WasmCon, and the [Bytecode Alliance's 'Componentize the World!'](https://cosmonic.com/blog/industry/better-together-lf-wasmCon-and-bytecode-alliance-componentize-the-world-webassembly-hackathon) Hackathon

### Recording

<ReactPlayer url='https://www.youtube.com/watch?v=b-B0XDJhs8U' controls />
