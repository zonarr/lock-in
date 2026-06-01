FROM astral/uv:python3.12-bookworm-slim
WORKDIR /app
COPY pyproject.toml .
COPY uv.lock .
RUN uv sync --frozen
COPY ./app ./app
CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","8000"]
EXPOSE 8000