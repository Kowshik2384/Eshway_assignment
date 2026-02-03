# Dev environment for httpx redirect authorization task
FROM public.ecr.aws/x8v8d7g8/mars-base:latest

WORKDIR /app

# Install git for applying patches
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --upgrade pip

# Copy repository files (user should clone repo first, then build)
COPY . .

# Install httpx in development mode with test dependencies
RUN pip install -e ".[dev]"

# Install pytest if not already included
RUN pip install pytest

# Default to bash for interactive use
CMD ["/bin/bash"]
