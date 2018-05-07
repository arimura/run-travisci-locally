FROM travisci/ci-amethyst:packer-1512508255-986baf0

USER travis

RUN /bin/bash -l -c "rvm install 2.3.0"
RUN /bin/bash -l -c "rvm use 2.3.0"

WORKDIR /home/travis/builds
RUN git clone https://github.com/travis-ci/travis-build.git
RUN /bin/bash -l -c "gem install travis"
RUN /bin/bash -l -c "travis"

WORKDIR /home/travis/builds/travis-build
RUN ln -s $(pwd) /home/travis/.travis/travis-build
RUN /bin/bash -l -c "bundle install"
RUN /bin/bash -l -c "bundler add travis"
RUN /bin/bash -l -c "bundler binstubs travis"
