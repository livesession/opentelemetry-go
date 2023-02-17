module github.com/livesession/opentelemetry-go/exporters/otlp

go 1.14

replace (
	github.com/livesession/opentelemetry-go => ../..
	github.com/livesession/opentelemetry-go/sdk => ../../sdk
)

require (
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.4.2 // indirect
	github.com/google/go-cmp v0.5.1
	github.com/stretchr/testify v1.6.1
	github.com/livesession/opentelemetry-go v0.11.0
	github.com/livesession/opentelemetry-go/sdk v0.11.0
	golang.org/x/net v0.0.0-20191002035440-2ec189313ef0 // indirect
	google.golang.org/genproto v0.0.0-20200513103714-09dca8ec2884 // indirect
	google.golang.org/grpc v1.31.0
)
