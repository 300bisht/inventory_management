import consumer from "channels/consumer"

consumer.subscriptions.create("InventoryChannel", {
  connected() {
  },

  disconnected() {
  },

  received(data) {
    updateInventoryItem(data.id, data.quantity)
  }
});

function updateInventoryItem(id, quantity) {
  const itemElement = document.getElementById(`inventory-item-${id}`)
  const quantityInput = itemElement.querySelector("#inventory_item_quantity");
  if (quantityInput) {
    quantityInput.value = quantity;
  }
}