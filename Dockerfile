FROM ruby:3.2

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /site

RUN gem install bundler jekyll

EXPOSE 4000

CMD ["bash"]