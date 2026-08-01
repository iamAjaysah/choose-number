# Step 1: Base image select karein
FROM nginx

# Step 2: Working directory set karein (Nginx ka default web directory)
WORKDIR /usr/share/nginx/html

# Step 3: Apni local index.html ko container me copy karein
COPY index.html .

# Step 4: Container ko Port 80 par expose karein
EXPOSE 80

# Step 5: Nginx server ko background me chalayein
CMD ["nginx", "-g", "daemon off;"]
