FROM node:lastest

WORKDIR /usr/src/Front_end

COPY package*.json ./
# Install the application dependencies
RUN npm install
# Copy the application code to the working directory
COPY . .

# create table user ( migrations-create-user.js)
RUN npx sequelize-cli db:migrate

EXPOSE 3000
# Define the command to run the application
CMD [ "npm", "start"]


