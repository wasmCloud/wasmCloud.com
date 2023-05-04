---
title: "Overview of the Capability Model"
date: 2020-05-01T00:00:00+00:00
description: "Capability model overview"
sidebar_position: 0
type: "docs"
---

A **_capability_** is an abstraction or representation of a non-functional requirement; some functionality required by your actor that is not considered part of the core business logic. As you write an actor that exposes some data over a RESTful endpoint, the HTTP server and the database are not parts of your business logic, they are services used by your actor--capabilities.

In wasmCloud, _capability providers_ are self-contained processes that implement a _capability contract_, which corresponds with a well-defined API. A capability contract ID is a unique name that identifies an interface or service abstraction. By convention, capability contract IDs contain a vendor ID prefix (the vendor that defines the _contract_, not necessarily a specific _implementation_). For example, the following is a list of the first-party capability contract IDs supported by wasmCloud (and, for each of these contract IDs, wasmCloud has implemented a default capability provider):

- `wasmcloud:httpserver`
- `wasmcloud:httpclient`
- `wasmcloud:messaging`
- `wasmcloud:keyvalue`

Additionally, the following capability contract IDs have corresponding capability provider implementations that are built-in to the host.

- `wasmcloud:builtin:numbergen`
- `wasmcloud:builtin:logging`

An actor must be signed with a capability contract ID to be allowed to use any capability provider with that contract ID.

The list of capability providers continues to grow. Please refer to these github links for more information:

- [capability-providers](https://github.com/wasmcloud/capability-providers/) for a list of supported capability providers;
- [interfaces](https://github.com/wasmcloud/interfaces) for definitions several api specifications, many of which are capability contracts, and
- [example providers](https://github.com/wasmCloud/examples/tree/main/provider) for additional sample code.

Capability contracts (and their associated IDs) are open, and any organization is free to create implementations of them. We believe a healthy wasmCloud ecosystem includes multiple implementations, from multiple vendors, of capability contracts, including those with `wasmcloud:`-prefixed IDs. In fact, wasmCloud has created multiple implementations of some of its own contracts.
