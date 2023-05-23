from typing import Union

from fastapi import FastAPI, Request

app = FastAPI()


@app.get("/")
def read_root():
    return "Hello World From BearAPI"

@app.get('/health')
def health_check():
    return {"status": "OK"}

@app.get('/ip')
def get_ip(request: Request):
    client_host = request.client.host
    return "Your ip address is {}".format(client_host)
