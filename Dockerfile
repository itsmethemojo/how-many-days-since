FROM nginx:1.23.2-alpine as build

COPY src /build/src

COPY templates /build/templates

COPY .dckrz /build/.dckrz

RUN ls -la /build

RUN cd /build && sh .dckrz/scripts/build-dev.sh

FROM nginx:1.23.2-alpine

RUN rm -rf /usr/share/nginx/html

COPY --from=build /build/dist /usr/share/nginx/html
