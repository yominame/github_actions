FROM ruby:2.3

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - ; \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - ; \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list ; \
  apt-get update -qq && \
  apt-get install -y -qq  --no-install-recommends build-essential libpq-dev cmake openssh-client pkg-config openjdk-8-jdk nodejs yarn rsync; \
  apt-get clean ; \
  update-java-alternatives --set java-1.8.0-openjdk-amd64

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64
