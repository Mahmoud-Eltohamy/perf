# Start with a base Python 3.7.2 image
FROM python:3.7.2

# Add the licenses for third party software and libraries
# ADD licenses /licenses

# Add the external tasks directory into /tasks
ADD /perf/scripts /perf/scripts

# Install the required dependencies via pip
RUN pip install -r /perf/scripts/requirements.txt

# Expose the required Locust ports
EXPOSE 5557 5558 8089

# Set script to be executable
RUN chmod 755 /perf/scripts/run.sh

# Start Locust using LOCUS_OPTS environment variable
#ENTRYPOINT ["/perf/scripts/run.sh"] 
