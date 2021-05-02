# syntax=docker/dockerfile:1
FROM amd64/alpine:latest

FROM jenkins/ssh-agent:alpine
USER root
RUN apk add -U --no-cache docker && apk add -U --no-cache git
