web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -c $WORKER_CONCURRENCY -q default -q mailers

