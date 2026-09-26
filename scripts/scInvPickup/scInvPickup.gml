function scInvPickup(Inv, Item) {
    
    var ItemName = Item.Name;
    
    // Look for an empty slot
    for (var i = 0; i < array_length(Inv); i++) {
        
        if (Inv[i] == -1) {
            show_debug_message(ItemName + " Added to slot " + string(i));
            Inv[i] = Item;
            return;
        }
    }
    
    // If we get here, every slot was occupied
    show_debug_message("All Slots are full, Cannot Pickup");
    oInventory.SlotsFull = true;
}
