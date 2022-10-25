FROM shoothzj/compile:go

RUN apt-get update && \
    apt-get install -y nodejs && \
    apt-get install -y npm && \
    npm install --global yarn && \
    apt-get clean all

RUN git clone --depth 1 https://github.com/apache/apisix-dashboard
