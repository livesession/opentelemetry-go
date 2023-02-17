module github.com/livesession/opentelemetry-go/example/prometheus

go 1.14

replace (
	github.com/livesession/opentelemetry-go => ../..
	github.com/livesession/opentelemetry-go/exporters/metric/prometheus => ../../exporters/metric/prometheus
	github.com/livesession/opentelemetry-go/sdk => ../../sdk
)

require (
	github.com/livesession/opentelemetry-go v0.11.0
	github.com/livesession/opentelemetry-go/exporters/metric/prometheus v0.11.0
)
