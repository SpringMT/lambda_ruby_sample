FROM public.ecr.aws/lambda/ruby:2.7

ENV GEM_HOME=${LAMBDA_TASK_ROOT}

COPY Gemfile Gemfile.lock ${LAMBDA_TASK_ROOT}/
RUN bash -l -c 'bundle config set without "development test" && bundle config set --local deployment "true" && bundle config set no-cache "true" && bundle install --jobs 4'

COPY main.rb response.rb ${LAMBDA_TASK_ROOT}/

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "main.main" ]
