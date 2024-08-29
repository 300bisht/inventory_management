# Rails 7 Inventory Management System

This is a Rails 7 application for managing inventory items, featuring real-time updates using Turbo Streams and ActionCable.

## Setup Instructions

### Prerequisites

- Ruby 3.1 or later
- Rails 7
- Sqllite which is default

### Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/your-repository.git
   cd your-repository

2. Install Dependencies

   bundle install

3. Set Up the Database

	bin/rails db:create
	bin/rails db:migrate

4. Seed the Database

   bin/rails db:seed


5. bin/rails server
   rails s   

## how you implemented the real-time features?
  - When an inventory item's quantity is updated, Turbo Streams automatically updates all connected clients without requiring a full page reload.
  - I created an InventoryChannel to broadcast changes. When an inventory item's quantity is updated, an ActionCable broadcast sends the new data to all subscribed clients.
  - The app/javascript/channels/inventory_channel.js file handles the subscription to the InventoryChannel and updates the UI with the new quantity.
  - I created a Stimulus controller that interacts with Turbo Streams and updates the UI based on user actions.

