module github.com/livesession/opentelemetry-go/example/otel-collector

go 1.14

replace (
	github.com/livesession/opentelemetry-go => ../..
	github.com/livesession/opentelemetry-go/exporters/otlp => ../../exporters/otlp
	github.com/livesession/opentelemetry-go/sdk => ../../sdk
)

require (
	github.com/livesession/opentelemetry-go v0.11.0
	github.com/livesession/opentelemetry-go/exporters/otlp v0.11.0
	github.com/livesession/opentelemetry-go/sdk v0.11.0
	google.golang.org/grpc v1.31.0
)
