gen-openapi-go-server:
	@echo "Generating OpenAPI spec..."
	@docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
		-i /local/schema/openapi/petstore.yaml \
		-g go-server \
		--additional-properties packageName=petstore \
		-o /local/gen/go/petstore

gen-openapi-go-gin:
	@echo "Generating OpenAPI spec..."
	@docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
		-i /local/schema/openapi/petstore.yaml \
		-g go-gin-server \
		--additional-properties packageName=petstore \
		-o /local/gen/gin/petstore

gen-openapi-go-echo:
	@echo "Generating OpenAPI spec..."
	@docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
		-i /local/schema/openapi/petstore.yaml \
		-g go-echo-server \
		--additional-properties packageName=petstore \
		-o /local/gen/echo/petstore
