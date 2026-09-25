if (keyboard_check_pressed(ord("E")) && !InventoryOpen && !MenuOpen) {
    InventoryOpen = true;
    MenuOpen = true;
    instance_activate_object(oInventorySlot6);
    instance_activate_object(oInventorySlot2);
    instance_activate_object(oInventorySlot3);
    instance_activate_object(oInventorySlot4);
    instance_activate_object(oInventorySlot5);
    instance_activate_object(oInventorySlot6);
    instance_activate_object(oInventorySlot7);
    instance_activate_object(oInventorySlot8);
    instance_activate_object(oInventorySlot9);
    oInventorySlot6.visible = true;
    oInventorySlot2.visible = true;
    oInventorySlot3.visible = true;
    oInventorySlot4.visible = true;
    oInventorySlot5.visible = true;
    oInventorySlot6.visible = true;
    oInventorySlot7.visible = true;
    oInventorySlot8.visible = true;
    oInventorySlot9.visible = true;
    
} else if (keyboard_check_pressed(ord("E")) && InventoryOpen){
    InventoryOpen = false;
    MenuOpen = false;
    instance_deactivate_object(oInventorySlot6);
    instance_deactivate_object(oInventorySlot2);
    instance_deactivate_object(oInventorySlot3);
    instance_deactivate_object(oInventorySlot4);
    instance_deactivate_object(oInventorySlot5);
    instance_deactivate_object(oInventorySlot6);
    instance_deactivate_object(oInventorySlot7);
    instance_deactivate_object(oInventorySlot8);
    instance_deactivate_object(oInventorySlot9);
    oInventorySlot6.visible = false;
    oInventorySlot2.visible = false;
    oInventorySlot3.visible = false;
    oInventorySlot4.visible = false;
    oInventorySlot5.visible = false;
    oInventorySlot6.visible = false;
    oInventorySlot7.visible = false;
    oInventorySlot8.visible = false;
    oInventorySlot9.visible = false;
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
