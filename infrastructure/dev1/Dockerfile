#initializes a new build stage and sets the Base Image
FROM python:alpine
#copies everything from the "app" directory into the root "app" within the container
COPY ./app/ /app 
#specifies the working directory
WORKDIR /app 
#runs a command within the container
RUN pip install -r requirements.txt
#sets the environment variable
ENV DEVICE="dev1"
#documentation that shows which ports are intended to be published
EXPOSE 5000 
#specifies the entry point for the Dockerfile.  Cannot be overridden 
ENTRYPOINT [ "python" ] 
#performs a health check on the status, with a command to curl the container, or run a Ncat on the localhost, or exit
HEALTHCHECK --interval=5s --timeout=3s CMD curl -f http://localhost:5000 || nc -zv localhost 5000 || exit 1
# specifies what to run, using the entrypoint
CMD [ "app.py" ]
