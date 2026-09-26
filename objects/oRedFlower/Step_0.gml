var DistanceToPlayer = point_distance(x, y, oPlayer.x, oPlayer.y);

if (DistanceToPlayer <= 24 && mouse_check_button_pressed(mb_right))
{
    var CanPickup = false;

    switch (oPlayer.FacingDirection)
    {
        case "right":
            if (x > oPlayer.x && abs(y - oPlayer.y) <= 16)
            {
                CanPickup = true;
            }
            break;

        case "left":
            if (x < oPlayer.x && abs(y - oPlayer.y) <= 16)
            {
                CanPickup = true;
            }
            break;

        case "down":
            if (y > oPlayer.y && abs(x - oPlayer.x) <= 16)
            {
                CanPickup = true;
            }
            break;

        case "up":
            if (y < oPlayer.y && abs(x - oPlayer.x) <= 16)
            {
                CanPickup = true;
            }
            break;
    }

    if (CanPickup)
    {
        var HasEmptySlot = false;

        for (var i = 0; i < array_length(oInventory.Inventory); i++)
        {
            if (oInventory.Inventory[i] == -1)
            {
                HasEmptySlot = true;
                break;
            }
        }

        if (HasEmptySlot)
        {
            scInvPickup(oInventory.Inventory, global.ITEM_REDFLOWER);
            instance_destroy();
        }
    }
}
