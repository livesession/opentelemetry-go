module github.com/livesession/opentelemetry-go/sdk

go 1.14

replace github.com/livesession/opentelemetry-go => ../

require (
	github.com/DataDog/sketches-go v0.0.1
	github.com/benbjohnson/clock v1.0.3
	github.com/google/go-cmp v0.5.1
	github.com/google/gofuzz v1.1.0 // indirect
	github.com/stretchr/testify v1.6.1
	github.com/livesession/opentelemetry-go v0.11.0
	google.golang.org/grpc v1.31.0
)
