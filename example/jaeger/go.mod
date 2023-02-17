module github.com/livesession/opentelemetry-go/example/jaeger

go 1.14

replace (
	github.com/livesession/opentelemetry-go => ../..
	github.com/livesession/opentelemetry-go/exporters/trace/jaeger => ../../exporters/trace/jaeger
	github.com/livesession/opentelemetry-go/sdk => ../../sdk
)

require (
	github.com/livesession/opentelemetry-go v0.11.0
	github.com/livesession/opentelemetry-go/exporters/trace/jaeger v0.11.0
	github.com/livesession/opentelemetry-go/sdk v0.11.0
)
