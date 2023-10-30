FROM archlinux

WORKDIR /workspace

RUN pacman -Syy

RUN pacman -S --noconfirm deno

COPY bin .

ENTRYPOINT ["deno"]

CMD ["run", "--allow-read","/workspace/main.ts"]