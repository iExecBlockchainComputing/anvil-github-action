FROM ghcr.io/foundry-rs/foundry:stable

COPY start-anvil.sh ./start-anvil.sh
RUN chmod +x ./start-anvil.sh

ENTRYPOINT ["./start-anvil.sh"]
