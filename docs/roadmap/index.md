---
id: 'index'
title: '2024 Q3 Roadmap'
date: 2024-07-17T00:00:00+00:00
description: 'wasmCloud Development Roadmap post 1.1, scoped to Q3 2024'
sidebar_position: 996
type: 'docs'
---

:::info
This roadmap page is a snapshot of the current state of the project. It is not a guarantee of future direction or features. It is a living document and will change as the project evolves. You can view the most current version of this roadmap on [GitHub Projects](https://github.com/orgs/wasmCloud/projects/7/views/3).
:::

The 2024 Q3 Roadmap was brainstormed and planned in the [02 Jul 2024 community meeting](/community/2024/07/02/community-meeting). Thank you to all who attended, commented, and contributed to making this roadmap community-driven.

## Retrospective

The [2024 Q2 roadmap](./2024-q2.md) centered on improvements, fixes, and documentation as we observe the impact of wasmCloud 1.0. We completed approximately half of the issues on the Q2 roadmap (17/29), leaving a few issues that weren't prioritized or specified enough to complete. In no way does this reflect a slow moving project, in fact the opposite is true. Solely in May and June of 2024, the primary wasmCloud repository had:

- 332 Commits
- 67 Issues Closed
- 260 Merged PRs
- 24 contributors

As we look forward to Q3 2024, we'll attempt to capture more of the work that's necessary on the roadmap and target a higher percentage of issues completed, though like any planning session priorities change as more details come from the actual implementation.

## Goals

Building on the work of the maintainers and contributors of Q2, this quarter will focus on the core goals of the project and expanding the surface area of contribution. Now that wasmCloud components can be written in Rust, Golang, JavaScript/TypeScript, and Python, and wasmCloud capability providers can be written in Rust or Golang using our respective provider SDKs, we have a wide variety of languages to accept contributions in.

1. **Utilize the transparency of components to provide a seamless developer experience for building, testing, and deploying applications with wasmCloud.**
1. Enable developers to build features without vendor lock-in, platform specific dependencies, or language constraints.
1. Facilitate 50% of issues on our Q3 roadmap to be completed by community contributors (non-wasmCloud maintainers)
1. Surface more information from internal APIs in wasmCloud, wadm, and the operator to improve debuggability

## Features

wasmCloud as a project offers the following top features:

1. Declarative WebAssembly Orchestration
1. Seamless Distributed Networking
1. Vendorless Application Components
1. Completely OTEL Observable
1. Defense-In-Depth Security By Default

## Diagram

This roadmap is unordered as each individual task can be completed indepedently, so no rigid order is necessary. The diagram is also not exhaustive, as there a few smaller tasks that are not included. You can view the full-size and links included version [here](https://excalidraw.com/#json=tAg5TkgH6bvrrq76YGEDb,MERSFwVkfKrrnEk6IXRh4g). This roadmap is also available as a [GitHub Project](https://github.com/orgs/wasmCloud/projects/7/views/11) for consistent updating.

![Q3 2024 Roadmap](/img/2024q3roadmap.png)

## Contributing

We welcome all contributors to the wasmCloud project, and we'd love to have help to accomplish our goals. If you're interested in contributing, please see our [Contributing Guide](https://github.com/wasmCloud/wasmCloud/blob/main/CONTRIBUTING.md) for more information, and come join us on [Slack](https://slack.wasmcloud.com) to chat with the team and other community members.

We try to mark issues that are good for new contributors with the [**good first issue**](https://github.com/wasmCloud/wasmCloud/contribute) label, so look out for those for well scoped issues that are a good place to start.

We also host [weekly community meetings](https://calendar.google.com/calendar/u/0/embed?src=c_6cm5hud8evuns4pe5ggu3h9qrs@group.calendar.google.com) that are open to all, where we can discuss aspects of the roadmap.
