---
title: 2023-04-12 Community Meeting
authors: [brooks]
tags: [community, meeting]
description: Agenda, notes, and recording for the 2023-04-12 community meeting
---

import ReactPlayer from 'react-player/youtube';

### Agenda

- wadm progress report
- Golang officially merges wasip1 support https://github.com/golang/go/issues/58141, discussion

<!--truncate-->

### Meeting Notes

- wadm progress report
  - wadm is progressing very nicely, with a ton of work going in over the past few weeks into the Rust rewrite + restructure
  - The Actor spread scaler is fully implemented
  - The ability for users to deploy and undeploy manifests is fully implemented
  - Essentially, what's left is managing providers, link definitions, some e2e testing, and integration with `wash`
- Golang merging wasip1
  - Exciting news as Golang merges wasip1 support, so you can build WASI modules with `GOOS=wasip1 GOARCH=wasm go build`, coming in Go 1.21
  - The Wasm support differs slightly from TinyGo but with go 1.22 the support will be the same
  - We'll be closely watching this develop as they formalize the way you import and export functions to see if we can use Go for wasmCloud actors

### Recording

Recording is being uploaded to YouTube and will be displayed promptly

<ReactPlayer url='https://youtu.be/Wpt86aYrJqs' controls>
