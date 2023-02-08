FROM mambaorg/micromamba:1.3.0

COPY --chown=$MAMBA_USER:$MAMBA_USER ci/environment-py3.11.yml /tmp/env.yaml
RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes
