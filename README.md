# Ruby on Rails 8 Project Template

This is a simple and opinionated Ruby on Rails 8 project template, designed to get you up and running quickly with modern tools and best practices.

## Features

- **Ruby 3.3.6**: Latest stable version of Ruby.
- **Rails 8**: Built on the cutting-edge Rails framework.
- **Solid Queue**: Efficient background job processing.
- **PostgreSQL**: Robust and scalable database support.
- **Tailwind CSS**: Modern utility-first CSS framework for styling.
- **RSpec**: Comprehensive testing framework for Ruby and Rails.
- **Docker**: Simplified setup and deployment using Docker.

## Getting Started

### Prerequisites

Ensure you have Docker and Docker Compose installed on your system.

### Setup

1. Clone this repository:

   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Build and run the application using Docker Compose:

   ```bash
   docker-compose up --build
   ```

3. Run database migrations inside the created container:

   ```bash
   docker-compose exec app rails db:migrate
   ```

4. Access the application at `http://localhost:3005`.

## Development Details

### User Backoffice CRUD

This template includes a simple backoffice for managing users, featuring basic CRUD operations. The backoffice is accessible via the `backoffice/users` endpoint.

### Authentication

Rails-generated authentication is implemented for simplicity, providing basic user login and registration functionality.

### No ENV Variables

All configurations are hardcoded for ease of use. No `.env` files or environment variables are required.

## Testing

Run tests using RSpec:

```bash
docker-compose exec app rspec
```

## Contributing

Feel free to fork this repository and make it your own. Contributions and feedback are welcome!

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

