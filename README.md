# Berth Occupancy Analytics Dashboard

A web-based dashboard for analyzing berth occupancy data from Excel files.

## Running with Docker

### Build and run with Docker Compose (recommended):
```bash
docker-compose up --build
```

The application will be available at http://localhost:8080

### Build and run with Docker directly:
```bash
# Build the image
docker build -t occupancy-dashboard .

# Run the container
docker run -p 8080:80 occupancy-dashboard
```

## Local Development

To run locally without Docker:
```bash
# Install dependencies (for local server)
npm install

# Run a simple HTTP server
npx http-server -p 8080 -o
```

## Usage

1. Open the application in your browser
2. Upload an Excel file with berth occupancy data
3. Explore the interactive charts and filters
4. Use the print button to generate reports

## Excel Data Format

The Excel file should contain the following columns:
- `Berth` - Berth identifier
- `BerthType` - Category classification
- `Year` - Year
- `Month` - Month (1-12)
- `OccupiedDays` - Number of days occupied
- `DaysInMonth` - Total days in the month
- `OccupancyPercent` - Occupancy percentage (optional)
