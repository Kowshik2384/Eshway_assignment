# Dev environment for httpx assignment
FROM public.ecr.aws/x8v8d7g8/mars-base:latest

WORKDIR /app

COPY . .

# Install project dependencies and pytest (not in httpx dev extras)
RUN pip install -e ".[dev]" pytest

CMD ["/bin/bash"]
