# Use the official Redmine image
FROM redmine:latest

# Set environment variables for Redmine database configuration
ENV REDMINE_DB_POSTGRES=db
ENV REDMINE_DB_USERNAME=redmine
ENV REDMINE_DB_PASSWORD=password
ENV REDMINE_DB_DATABASE=redmine_production

# Expose the default Redmine port
EXPOSE 3000

# Start the Redmine server
CMD ["rails", "server", "-b", "0.0.0.0"]

