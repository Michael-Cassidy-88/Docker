#initializes a new build stage and sets the Base Image
FROM python 
#copies everything from the "app" directory into the root "app" within the container
COPY ./app/ /app 
#specifies the working directory
WORKDIR /app 
#runs a command within the container
RUN pip install -r requirements.txt
#documentation that shows which ports are intended to be published
EXPOSE 5000 
#specifies the entry point for the Dockerfile.  Cannot be overridden 
ENTRYPOINT [ "python" ] 
# specifies what to run, using the entrypoint
CMD [ "app.py" ]
