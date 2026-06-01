from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def greet():
    return{"message":"hello"}

@app.get("/jobs")
async def get_jobs():
    pass

@app.get("/jobs/{job_id}")
async def get_job_id(job_id:int):
    pass