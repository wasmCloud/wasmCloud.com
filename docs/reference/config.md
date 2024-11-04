---
title: 'wasmcloud.toml'
date: 2023-09-29T11:02:05+06:00
sidebar_position: 4
draft: false
---

Even with all of wasmCloud's benefits, it still has every developers' least favorite file(s) - the config file. Luckily, we've cut it down to just one file and made it as simple as possible to use.

You can think of `wasmcloud.toml` as the `package.json` or `Cargo.toml` of the wasmCloud ecosystem. It's the main config file for any of your wasmCloud projects. Let's look at an example:

```toml
name = "http-hello-world"
language = "rust"
type = "component"
version = "0.1.0"

[component]
wit_world = "hello"
wasm_target = "wasm32-wasi-preview2"
```

This is a fairly minimal configuration for a wasmCloud Rust `hello world` component. It defines everything needed to build and sign the component, including the language toolchain to use.

## `wash build`

The partner-in-crime to `wasmcloud.toml` is `wash build`. This command takes all the options set in the `wasmcloud.toml` file to build and sign the component/provider/interface.

See the [`build` docs](https://github.com/wasmCloud/wasmCloud/tree/main/crates/wash-cli#build) for more info.

## `wasmcloud.toml` Spec

### Common Config

| Setting       | Type   | Default                           | Description                                                                            |
| ------------- | ------ | --------------------------------- | -------------------------------------------------------------------------------------- |
| name          | string |                                   | Name of the project                                                                    |
| version       | string |                                   | Semantic version of the project                                                        |
| path          | string | `{pwd}`                           | Path to the project directory to determine where built and signed artifacts are output |
| wit           | string | `./wit`                           | Path to the directory where the WIT world and dependencies can be found                |
| build         | string | `./build`                         | Path to the directory where the built artifacts should be written                      |
| language      | enum   | [rust, tinygo]                    | Language that component or provider is written in                                      |
| type          | enum   | [component, provider, interface ] | Type of wasmcloud artifact that is being generated                                     |
| wasm_bin_name | string | "name" setting                    | Expected name of the wasm module binary that will be generated                         |
| overrides     | object |                                   | Overrides for wit dependencies (often used for local dependencies)                     |

### Language Config - `[tinygo]`

| Setting             | Type    | Default        | Description                                                    |
| ------------------- | ------- | -------------- | -------------------------------------------------------------- |
| tinygo_path         | string  | `which tinygo` | The path to the tinygo binary                                  |
| disable_go_generate | boolean | false          | Whether to disable the 'go generate' step in the build process |

### Language Config - `[rust]`

| Setting     | Type   | Default       | Description                             |
| ----------- | ------ | ------------- | --------------------------------------- |
| cargo_path  | string | `which cargo` | The path to the cargo binary            |
| target_path | string | `./target`    | Path to cargo/rust's `target` directory |

### Registry Config - `[registry]`

| Setting     | Type   | Default | Description                                                                                     |
| ----------- | ------ | ------- | ----------------------------------------------------------------------------------------------- |
| url         | string | N/A     | URL for the container registry to use when pushing images (i.e. `wash push`)                    |
| credentials | string |         | Path to a credentials file to use when pushing to container registries (ex. specified by `url`) |

### Type Config - `[component]`

| Setting        | Type    | Default                                   | Description                                                                                                                                                                                                                                                                                                                   |
| -------------- | ------- | ----------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| claims         | list    | `[]`                                      | The list of provider claims that this component requires. eg. ["wasmcloud:httpserver", "wasmcloud:blobstore"]                                                                                                                                                                                                                 |
| registry       | string  | `localhost:8080`                          | The registry to push to. eg. "localhost:8080"                                                                                                                                                                                                                                                                                 |
| push_insecure  | boolean | `false`                                   | Whether to push to the registry insecurely                                                                                                                                                                                                                                                                                    |
| key_directory  | string  | `~/.wash/keys`                            | The directory to store the private signing keys in                                                                                                                                                                                                                                                                            |
| wasm_target    | string  | wasm32-unknown-unknown                    | Compile target. Can be one of: wasm32-unknown-unknown, wasm32-wasi-preview1, wasm32-wasi-preview2                                                                                                                                                                                                                             |
| call_alias     | string  |                                           | The call alias of the component                                                                                                                                                                                                                                                                                               |
| build_artifact | string  | /path/to/project/build/{filename}.wasm    | Optional override path where `wash` can expect to find the built and unsigned WebAssembly artifact                                                                                                                                                                                                                            |
| build_command  | string  | Language specific command                 | Optional command to run instead of inferring the default language toolchain build command. Supports commands in the format of `command ...arg`. `wash` expects that the build command will result in an artifact under the project `build` folder named either `{wasm_bin_name}.wasm` if supplied or `{name}.wasm` otherwise. |
| destination    | string  | /path/to/project/build/{filename}\_s.wasm | File path to output the destination WebAssembly artifact after building and signing.                                                                                                                                                                                                                                          |

### Type Config - `[provider]`

| Setting       | Type   | Default | Description                       |
| ------------- | ------ | ------- | --------------------------------- |
| capability_id | string |         | The capability ID of the provider |
| vendor        | string |         | The vendor name of the provider   |

### Type Config - `[interface]`

| Setting        | Type   | Default  | Description               |
| -------------- | ------ | -------- | ------------------------- |
| html_target    | string | `./html` | Directory to output HTML  |
| codegen_config | string | `.`      | Path to codegen.toml file |

### Overrides config - `[overrides]`

Overrides are key-value pairs that can be used to override locations of wit dependencies. The key name should match the package reference without a version (e.g. `wasi:http`).

For example, if you have a dependency called `my:local-dep@0.1.0` that is located in another directory, you can tell `wash` how to find it with the following overrides section:

```toml
[overrides]
"my:local-dep" = { path = "../path/to/my/local/dep" }
```

It can also be used to override a version requirement for a package, but this is a highly advanced use case and should be used with caution.

```toml
[overrides]
"my:local-dep" = { version = "^0.1.0" }
```
