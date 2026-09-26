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

// Start dragging an item
if (oGUI.InventoryOpen && !IsDragging)
{
    if (mouse_check_button_pressed(mb_left))
    {
        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);

        var sw = sprite_get_width(sInventorySlot);

        // Check normal inventory
        for (var i = 0; i < array_length(Inventory); i++)
        {
            var xx;
            var yy;

            if (!InAlchTable)
            {
                xx = 150 - ((InvWidth - 1) * InvPadding) / 2
                    + (i mod InvWidth * InvPadding);

                yy = 200 - ((InvHeight - 1) * InvPadding) / 2
                    + (i div InvWidth * InvPadding);
            }
            else
            {
                xx = 50 - ((InvWidth - 1) * InvPadding) / 2
                    + (i mod InvWidth * InvPadding);

                yy = 100 - ((InvHeight - 1) * InvPadding) / 2
                    + (i div InvWidth * InvPadding);
            }

            if (point_in_rectangle(
                mx, my,
                xx - sw / 2,
                yy - sw / 2,
                xx + sw / 2,
                yy + sw / 2
            ))
            {
                if (Inventory[i] != -1)
                {
                    IsDragging = true;
                    DragItem = Inventory[i];
                    DragSource = i;
                    Inventory[i] = -1;

                    break;
                }
            }
        }

        // Check alchemy table
        if (!IsDragging && oAlchemyTable.AlchemyOpen)
        {
            for (var i = 0; i < oAlchemyTable.AlchemyTotal; i++)
            {
                var xx = 250 + (i * InvPadding);
                var yy = 100;

                if (point_in_rectangle(
                    mx, my,
                    xx - sw / 2,
                    yy - sw / 2,
                    xx + sw / 2,
                    yy + sw / 2
                ))
                {
                    if (oAlchemyTable.AlchemyInventory[i] != -1)
                    {
                        IsDragging = true;
                        DragItem = oAlchemyTable.AlchemyInventory[i];
                        DragSource = i;

                        // Remember that the item came from the alchemy table
                        DragFromAlchemy = true;

                        oAlchemyTable.AlchemyInventory[i] = -1;

                        break;
                    }
                }
            }
        }
    }
}


// Finish dragging an item
if (IsDragging && mouse_check_button_released(mb_left))
{
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    var sw = sprite_get_width(sInventorySlot);

    var DroppedSuccessfully = false;

    // -------------------------------------------------
    // Dragging FROM normal inventory
    // -------------------------------------------------

    if (!DragFromAlchemy)
    {
        if (oAlchemyTable.AlchemyOpen)
        {
            for (var i = 0; i < oAlchemyTable.AlchemyTotal; i++)
            {
                var xx = 250 + (i * InvPadding);
                var yy = 100;

                if (point_in_rectangle(
                    mx, my,
                    xx - sw / 2,
                    yy - sw / 2,
                    xx + sw / 2,
                    yy + sw / 2
                ))
                {
                    if (oAlchemyTable.AlchemyInventory[i] == -1)
                    {
                        oAlchemyTable.AlchemyInventory[i] = DragItem;
                        DroppedSuccessfully = true;
                    }

                    break;
                }
            }
        }

        // Didn't drop into alchemy table
        if (!DroppedSuccessfully)
        {
            Inventory[DragSource] = DragItem;
        }
    }


    // -------------------------------------------------
    // Dragging FROM alchemy table
    // -------------------------------------------------

    else
    {
        for (var i = 0; i < array_length(Inventory); i++)
        {
            var xx;
            var yy;

            if (!InAlchTable)
            {
                xx = 150 - ((InvWidth - 1) * InvPadding) / 2
                    + (i mod InvWidth * InvPadding);

                yy = 200 - ((InvHeight - 1) * InvPadding) / 2
                    + (i div InvWidth * InvPadding);
            }
            else
            {
                xx = 50 - ((InvWidth - 1) * InvPadding) / 2
                    + (i mod InvWidth * InvPadding);

                yy = 100 - ((InvHeight - 1) * InvPadding) / 2
                    + (i div InvWidth * InvPadding);
            }

            if (point_in_rectangle(
                mx, my,
                xx - sw / 2,
                yy - sw / 2,
                xx + sw / 2,
                yy + sw / 2
            ))
            {
                if (Inventory[i] == -1)
                {
                    Inventory[i] = DragItem;
                    DroppedSuccessfully = true;
                }

                break;
            }
        }

        // Didn't drop into inventory
        if (!DroppedSuccessfully)
        {
            oAlchemyTable.AlchemyInventory[DragSource] = DragItem;
        }
    }


    // Reset dragging
    DragItem = -1;
    DragSource = -1;
    DragFromAlchemy = false;
    IsDragging = false;
}

