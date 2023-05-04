from typing import Union

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return "Hello World From BearAPI"

@app.get('/health')
def health_check():
    return {"status": "OK"}
