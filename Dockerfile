FROM node:8.9.4-alpine

WORKDIR /usr/src

ENV ANGULAR_CLI_VERSION v1.7.0
ENV STYLELINT_VERSION 9.1.1
RUN yarn global add @angular/cli@${ANGULAR_CLI_VERSION} \
                    tslint@${TSLINT_VERSION} \
                    stylelint@${STYLELINT_VERSION} \
                    stylelint-scss \
                    stylelint-config-sass-guidelines \
                    stylelint-order \
                    stylelint-scss \
    && ng new angular

WORKDIR /usr/src/angular
COPY src /usr/src/angular/src/
CMD ["exec", "$@"]
