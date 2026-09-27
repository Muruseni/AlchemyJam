if (AlchemyOpen)
{
    var sw = sprite_get_width(sInventorySlot);

    // -----------------------------------------
    // Alchemy Table Slots
    // -----------------------------------------
    for (var i = 0; i < AlchemyTotal; i++)
    {
        var xx = 250 + (i * oInventory.InvPadding);
        var yy = 100;

        // Draw slot
        draw_sprite(sInventorySlot, 0, xx, yy);

        // Draw item
        if (AlchemyInventory[i] != -1)
        {
            var Sprite = AlchemyInventory[i].Sprite;

            draw_sprite(Sprite, 0, xx, yy);
        }
    }


    // -----------------------------------------
    // Brew Button
    // -----------------------------------------
    var ButtonX = 250 + oInventory.InvPadding;
    var ButtonY = 145;

    draw_sprite(sBrewButton, 0, ButtonX, ButtonY);
}


// -----------------------------------------
// Draw dragged item on top of everything
// -----------------------------------------
if (oInventory.IsDragging && oInventory.DragItem != -1)
{
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    draw_sprite(oInventory.DragItem.Sprite, 0, mx, my);
}
