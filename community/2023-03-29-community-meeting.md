---
title: 2023-03-29 Community Meeting
authors: [brooks]
tags: [community, meeting]
description: Agenda, notes, and recording for the 2023-03-29 community meeting
---

import ReactPlayer from 'react-player/youtube';

### Agenda

- (DEMO) wasmCloud's KVcounter, but with Wasm components
- Implications of components on the wasmCloud ecosystem
  - Actors
  - Examples
  - Capability Providers
  - wasmCloud hosts
  - Language support
  - Release roadmap
- (DEMO) Cosmonic Concordance - an open sourced framework for building event sourced systems with wasmCloud

<!--truncate-->

### Meeting Notes

#### Demo: The Component Model with Brooks

Hot on the heels of Bailey's WASM I/O talk, Brooks took us through the first example of the Component Model working in wasmCloud.

Key points:

- The Component Model is not tied to wasmCloud, you'll be able to use it with any Wasm runtime that supports the wasi-cloud components.
- Bailey's Wasm repo can be found [here](https://github.com/ricochet/wasmio-2023/tree/main)
- Ping Pong takes a message over the messaging wasi-cloud contract and interacts with KV using kv wasi-cloud contract.
- Interfaces are created with wit-bindgen - agnostic - so you can work with your own business logic.
- You can build using cargo-build compiled to wasi - we take a Wasm module and migrate it to a Wasm component (wasi preview 2 format).
- Wasmbuilder is a great way to combine all your components. With this tool we can drag and drop components on a canvas and stitch them together in a nice UI - check out Wasmbuilders here (huge thanks to Peter Huene from Fastly!) https://wasmbuilder.app/

![wasm component actor](https://raw.githubusercontent.com/ricochet/wasmio-2023/main/docs/img/wasmbuilder.app.png)

- ping pong - pure business logic
- two standard components for messaging and Key-Value
- wasmCloud actor component for wasmCloud compatibility

The Fused Module
We stitched together wasi, KV, business logic (ping pong) and then we have the actor component (wasmCloud specific functionality). Essentially, we hook up the imports and exports so all the types and requirements match up. Here's the fused wasm ping pong component - assigned wasmCloud actor, with private and public key, assigned capabilities at runtime.

- We had a couple of interesting questions from the community, check out the discussion in the video link below.
- wasmCloud v0.62 - has active working support for components, which will be released either late this week or early next week

#### Update on Language Support

- Components can be written in different languages. wasmCloud will continue to be written in Rust but bringing in wit-bindgen allows us to expand language support for wasmCloud!
- The big news is that if you see a new language emerge in wit-bindgen we can support that in wasmCloud without any changes to our SDKs.
- We may well contribute these codegen libraries alongside other wonderful contributors so that even more languages can work in WebAssembly.

#### Demo: Full Event Sourcing in wasmCloud: Kevin Hoffman

- Open sourcing the event-sourcing interface, contract, and capability provider that Cosmonic uses to run its platform backend
- An event-sourced app is a derivation of the events that occurred in the past. Components are aggregates - representing instances of entities (domain-driven design definition).
- Aggregates validate commands and emit events.
- In this demo, we show how you can apply event sourcing techniques to a banking model
- We've called our event sourcing project Concordance - you can view resources [here](https://github.com/cosmonic/concordance/tree/main).
- If you're looking to build an application using an event-sourced framework, wasmCloud is now a perfect platform to do so
- Kevin will be presenting this innovation at KubeCon - join him live or on-demand on Friday 21st at 11.55am - 12.30pm CEST details here - https://kccnceu2023.sched.com/event/1Hycy

### Recording

Recording is being uploaded to YouTube and will be displayed promptly
<ReactPlayer url="https://www.youtube.com/watch?v=vH19flx7l84" controls />
