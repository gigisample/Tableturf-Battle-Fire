FROM jupyter/scipy-notebook

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# jupyter の起動パラメータを設定します
EXPOSE 8888
CMD ["jupyter", "notebook", \
     "--port=8888", \
     "--ip=0.0.0.0", \
     "--allow-root", \
     "--no-browser", \
     "--NotebookApp.token=''", \
     "--NotebookApp.notebook_dir='/usr/src/app'"]