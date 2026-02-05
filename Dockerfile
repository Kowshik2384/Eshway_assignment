# Dev environment for httpx assignment
FROM public.ecr.aws/x8v8d7g8/mars-base:latest

WORKDIR /app

COPY . .

# Install project dependencies and required test dependencies
RUN pip install -e ".[dev]" pytest trustme uvicorn

CMD ["/bin/bash"]
