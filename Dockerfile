FROM vineelsai/arch:latest

COPY . /

RUN rm /.dockerenv

RUN pacman -Syyu --noconfirm

RUN pacman -S --noconfirm sudo nano vim git base-devel wget curl

RUN echo "%wheel        ALL=(ALL)       ALL" >> /etc/sudoers

RUN touch /etc/machine-id
