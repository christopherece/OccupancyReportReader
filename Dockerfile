FROM nginx:alpine

# Copy the HTML file to nginx's default html directory
COPY index.html /usr/share/nginx/html/index.html

# Copy the Excel file if it exists (optional sample data)
COPY FiveYearOccupancyReport.xlsx /usr/share/nginx/html/FiveYearOccupancyReport.xlsx

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
