GO=go
BINARY_NAME=dsf
BUILD_DIR=bin


build:
	@$(GO) build -o $(BUILD_DIR)/$(BINARY_NAME)

run: build
	@./$(BUILD_DIR)/$(BINARY_NAME)

# Run tests
test:
	@echo "Running tests..."
	@$(GO) test ./...

# Clean the build artifacts
clean:
	@echo "Cleaning build artifacts..."
	rm -rf $(BUILD_DIR)/$(BINARY_NAME)

# Show the help message
help:
	@echo "Makefile for Go project"
	@echo "Usage:"
	@echo "  make       - Build the application"
	@echo "  make test  - Run tests"
	@echo "  make clean - Clean build artifacts"
	@echo "  make run   - Build and run the application"
	@echo "  make help  - Display this help message"