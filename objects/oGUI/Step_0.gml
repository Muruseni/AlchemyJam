if (keyboard_check_pressed(ord("E")) && !InventoryOpen && !MenuOpen)
{
    InventoryOpen = true;
    MenuOpen = true;
}
else if (keyboard_check_pressed(ord("E")) && InventoryOpen && !oInventory.InAlchTable)
{
    InventoryOpen = false;
    MenuOpen = false;
}


if (keyboard_check_pressed(vk_escape) && MenuOpen) {
    //Close all Menues
    PauseOpen = false;
    InventoryOpen = false;
    MenuOpen = false;
    
     // Close Alchemy Table
    if (oInventory.InAlchTable)
    {
        oInventory.InAlchTable = false;
        oAlchemyTable.AlchemyOpen = false;
    }
} 
else if (keyboard_check_pressed(vk_escape) && !MenuOpen) {
    //Open Pause and MenuBg
    //remember to pausetime ticks later
    PauseOpen = true;
    MenuOpen = true;
}
