# Custom Jekyll Build Container

This is a standard Ruby container with additional dependencies pre-installed for building my personal website (specified in `Gemfile` and `Gemfile.lock`.

With this container, my CI builds are sped up by ~6 minutes. My site's dependencies *rarely* change, so it's not worth it to set up any automation for this.

I use the following commands to build/push the image manually.

```
gcloud config set project oceanblue-public-registry
gcloud auth configure-docker
docker build -t gcr.io/oceanblue-public-registry/jekyll-custom-build/jekyll-build:1.0.0 .
docker push gcr.io/oceanblue-public-registry/jekyll-custom-build/jekyll-build:1.0.0
```
