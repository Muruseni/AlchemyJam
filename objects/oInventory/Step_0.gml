//Testing purposes
if keyboard_check_pressed(vk_enter){
    if (!SlotsFull){
    scInvPickup(Inventory,choose(global.ITEM_BLACKMUSHROOM, global.ITEM_BLACKPOTIONL));
    } else {
        
    }
}
    //test clear inventory
if keyboard_check_pressed(vk_backspace){
    
    for(var i = 0; i < array_length(Inventory); i++){
        Inventory[i] = -1;
    }
    oInventory.SlotsFull = false;
}
