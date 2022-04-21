FROM jekyll/jekyll as builder
RUN gem install bundler
RUN gem install jekyll-scholar jekyll-gist jekyll-sitemap jekyll-seo-tag jekyll-paginate
RUN gem install webrick
RUN chown jekyll:jekyll -R /usr/gem
RUN jekyll build

CMD [ "bash" ]
