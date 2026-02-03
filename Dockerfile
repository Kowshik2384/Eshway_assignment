# Dev environment for httpx assignment
FROM public.ecr.aws/x8v8d7g8/mars-base:latest

WORKDIR /app

COPY . .

# Install project dependencies including test/dev dependencies at build time
RUN pip install -e ".[dev]" pytest

CMD ["/bin/bash"]
