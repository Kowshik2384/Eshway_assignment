# Dev environment for httpx assignment
FROM public.ecr.aws/x8v8d7g8/mars-base:latest

WORKDIR /app

# Suppress deprecation warnings (cgi module is deprecated on Python 3.12)
ENV PYTHONWARNINGS=ignore::DeprecationWarning

COPY . .

# Install project and required test dependencies
RUN pip install -e ".[dev]" pytest trustme uvicorn

CMD ["/bin/bash"]
