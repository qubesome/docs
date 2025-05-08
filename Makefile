RUNNER ?= docker
IMG_NAME=qubesome-docs

serve:
	$(RUNNER) build -t $(IMG_NAME) .
	$(RUNNER) run -p 8000:8000 $(IMG_NAME)
