module go.opentelemetry.go/otel/example/zipkin

go 1.14

replace (
	github.com/livesession/opentelemetry-go => ../..
	github.com/livesession/opentelemetry-go/exporters/trace/zipkin => ../../exporters/trace/zipkin
	github.com/livesession/opentelemetry-go/sdk => ../../sdk
)

require (
	github.com/livesession/opentelemetry-go v0.11.0
	github.com/livesession/opentelemetry-go/exporters/trace/zipkin v0.11.0
	github.com/livesession/opentelemetry-go/sdk v0.11.0
)
