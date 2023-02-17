module github.com/livesession/opentelemetry-go/example/namedtracer

go 1.14

replace (
	github.com/livesession/opentelemetry-go => ../..
	github.com/livesession/opentelemetry-go/exporters/stdout => ../../exporters/stdout
	github.com/livesession/opentelemetry-go/sdk => ../../sdk
)

require (
	github.com/livesession/opentelemetry-go v0.11.0
	github.com/livesession/opentelemetry-go/exporters/stdout v0.11.0
	github.com/livesession/opentelemetry-go/sdk v0.11.0
)
