FROM python:3.14

RUN pip install mkdocs mkdocs-material

WORKDIR /docs

COPY ./mkdocs.yml /docs/
COPY ./src/ /docs/src/

EXPOSE 8000
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
