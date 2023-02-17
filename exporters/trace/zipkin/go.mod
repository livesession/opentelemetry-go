module github.com/livesession/opentelemetry-go/exporters/trace/zipkin

go 1.14

replace (
	github.com/livesession/opentelemetry-go => ../../..
	github.com/livesession/opentelemetry-go/sdk => ../../../sdk
)

require (
	github.com/openzipkin/zipkin-go v0.2.3
	github.com/stretchr/testify v1.6.1
	github.com/livesession/opentelemetry-go v0.11.0
	github.com/livesession/opentelemetry-go/sdk v0.11.0
	google.golang.org/grpc v1.31.0
)
