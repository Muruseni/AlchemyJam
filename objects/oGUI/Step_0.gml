if (keyboard_check_pressed(ord("E")) && !InventoryOpen && !MenuOpen) {
    InventoryOpen = true;
    MenuOpen = true;
    instance_activate_object(oInventory);
    
} else if (keyboard_check_pressed(ord("E")) && InventoryOpen){
    InventoryOpen = false;
    MenuOpen = false;
    instance_deactivate_object(oInventory);
}


if (keyboard_check_pressed(vk_escape) && MenuOpen) {
    //Close all Menues
    PauseOpen = false;
    InventoryOpen = false;
    MenuOpen = false;
} 
else if (keyboard_check_pressed(vk_escape) && !MenuOpen) {
    //Open Pause and MenuBg
    //remember to pausetime ticks later
    PauseOpen = true;
    MenuOpen = true;
}
