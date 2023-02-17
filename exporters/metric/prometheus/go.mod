module github.com/livesession/opentelemetry-go/exporters/metric/prometheus

go 1.14

replace (
	github.com/livesession/opentelemetry-go => ../../..
	github.com/livesession/opentelemetry-go/sdk => ../../../sdk
)

require (
	github.com/prometheus/client_golang v1.7.1
	github.com/stretchr/testify v1.6.1
	github.com/livesession/opentelemetry-go v0.11.0
	github.com/livesession/opentelemetry-go/sdk v0.11.0
)
