show_debug_message("Alchemy Step");

var DistanceToPlayer = point_distance(x, y, oPlayer.x, oPlayer.y);

if (DistanceToPlayer <= 24 && mouse_check_button_pressed(mb_right))
{
    show_debug_message("Right clicked near table");

    var CanInteract = false;

    switch (oPlayer.FacingDirection)
    {
        case "right":
            if (x > oPlayer.x && abs(y - oPlayer.y) <= 16)
            {
                CanInteract = true;
            }
            break;

        case "left":
            if (x < oPlayer.x && abs(y - oPlayer.y) <= 16)
            {
                CanInteract = true;
            }
            break;

        case "down":
            if (y > oPlayer.y && abs(x - oPlayer.x) <= 16)
            {
                CanInteract = true;
            }
            break;

        case "up":
            if (y < oPlayer.y && abs(x - oPlayer.x) <= 16)
            {
                CanInteract = true;
            }
            break;
    }

    if (CanInteract)
    {
        show_debug_message("Can interact with alchemy table");

        AlchemyOpen = true;
        oInventory.InAlchTable = true;
        oGUI.InventoryOpen = true;
        oGUI.MenuOpen = true;
    }
}
