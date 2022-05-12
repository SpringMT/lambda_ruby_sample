FROM public.ecr.aws/lambda/ruby:2.7

# Copy dependency management file
COPY Gemfile ${LAMBDA_TASK_ROOT}

# Install dependencies under LAMBDA_TASK_ROOT
ENV GEM_HOME=${LAMBDA_TASK_ROOT}
RUN bundle install --no-cache -j4 --deployment --without development test

# Copy function code
COPY app.rb ${LAMBDA_TASK_ROOT}
COPY response.rb ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "main.main" ]
