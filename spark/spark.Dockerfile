# Use spark image
FROM apache/spark-py:v3.4.0

# Set working directory
WORKDIR /spark/

# Switch to root user to install dependencies
USER root

# Set environment variables
ENV PYTHONPATH="${SPARK_HOME}/python/:$PYTHONPATH"
ENV PYTHONPATH="${SPARK_HOME}/python/lib/py4j-0.10.9.7-src.zip:$PYTHONPATH"

# Install Jupyter Notebook
RUN pip install jupyter

# Expose Jupyter and Spark ports
EXPOSE 8888 7070 4040

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]