FROM public.ecr.aws/lambda/ruby:2.7

# Copy dependency management file
COPY Gemfile Gemfile.lock ${LAMBDA_TASK_ROOT}/

# Install dependencies under LAMBDA_TASK_ROOT
ENV GEM_HOME=${LAMBDA_TASK_ROOT}
RUN bash -l -c 'bundle install --no-cache --deployment --jobs 4'

# Copy function code
COPY app.rb ${LAMBDA_TASK_ROOT}
COPY response.rb ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "main.main" ]
