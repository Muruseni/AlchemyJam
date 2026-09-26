function scInvDropOff(Inv, InvIndex){
    var ItemName = Inv[InvIndex].Name;
    
    Inv[InvIndex] = -1;
    show_debug_message("Item " + ItemName + " Removed");
}