InvWidth = 3;
InvHeight = 3;
InvTotal = InvWidth * InvHeight;
InvPadding = sprite_get_width(sInventorySlot) + 2;
Inventory = array_create(InvTotal, -1);


InAlchTable = false;

SlotsFull = false;

//Animate
InvAnims =array_create(InvTotal, -1);
for(var i = 0; i < array_length(InvAnims); i++){
    InvAnims[i] = {Size: 1};
}

display_set_gui_size(400, 400);

