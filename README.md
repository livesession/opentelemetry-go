# OpenTelemetry-Go

[![Circle CI](https://circleci.com/gh/open-telemetry/opentelemetry-go.svg?style=svg)](https://circleci.com/gh/open-telemetry/opentelemetry-go)
[![Docs](https://godoc.org/github.com/livesession/opentelemetry-go?status.svg)](https://pkg.go.dev/github.com/livesession/opentelemetry-go)
[![Go Report Card](https://goreportcard.com/badge/github.com/livesession/opentelemetry-go)](https://goreportcard.com/report/github.com/livesession/opentelemetry-go)
[![Gitter](https://badges.gitter.im/open-telemetry/opentelemetry-go.svg)](https://gitter.im/open-telemetry/opentelemetry-go?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

The Go [OpenTelemetry](https://opentelemetry.io/) client.

## Installation

This repository includes multiple packages. The `api`
package contains core data types, interfaces and no-op implementations that comprise the OpenTelemetry API following
[the
specification](https://github.com/open-telemetry/opentelemetry-specification).
The `sdk` package is the reference implementation of the API.

Libraries that produce telemetry data should only depend on `api`
and defer the choice of the SDK to the application developer. Applications may
depend on `sdk` or another package that implements the API.

All packages are published to [github.com/livesession/opentelemetry-go](https://pkg.go.dev/github.com/livesession/opentelemetry-go) and is the preferred location to import from.

Additional resources:

- [Developing using Go Modules](https://blog.golang.org/using-go-modules)
- [Adding dependencies and installing them](https://golang.org/cmd/go/#hdr-Add_dependencies_to_current_module_and_install_them)

## Quick Start

Below is a brief example of importing OpenTelemetry, initializing a tracer and creating some simple spans.

```go
package main

import (
	"context"
	"log"

	"github.com/livesession/opentelemetry-go/api/global"
	"github.com/livesession/opentelemetry-go/exporters/stdout"
	sdktrace "github.com/livesession/opentelemetry-go/sdk/trace"
)

func main() {
	pusher, err := stdout.InstallNewPipeline(nil, nil)
	if err != nil {
		log.Fatal(err)
	}
	defer pusher.Stop()

	tracer := global.Tracer("ex.com/basic")
	ctx, span := tracer.Start(context.Background(), "main")
	defer span.End()
	/* … */
}
```

See the [API
documentation](https://pkg.go.dev/github.com/livesession/opentelemetry-go) for more
detail, and the
[opentelemetry examples](./example/).

## Compatible Exporters

See the Go packages depending upon
[sdk/export/trace](https://pkg.go.dev/github.com/livesession/opentelemetry-go/sdk/export/trace?tab=importedby)
and [sdk/export/metric](https://pkg.go.dev/github.com/livesession/opentelemetry-go/sdk/export/metric?tab=importedby)
for a list of all exporters compatible with OpenTelemetry's Go SDK.

## Compatible Libraries

See the
[opentelemetry-go-contrib](https://github.com/open-telemetry/opentelemetry-go-contrib)
repo for packages that facilitates instrumenting other useful Go libraries
with opentelemetry-go for distributed tracing and monitoring.

## Contributing

See the [contributing file](CONTRIBUTING.md).
