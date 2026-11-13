// -----------------------------------------
// Interact with Alchemy Table
// -----------------------------------------

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


// -----------------------------------------
// Brewing Timer
// -----------------------------------------

if (Brewing)
{
    BrewingTimer--;

    if (BrewingTimer <= 0)
   {
       // Put the potion where the first ingredient was
       AlchemyInventory[BrewingSlot] = BrewingPotion;
   
       // Clear the other ingredient slots
       for (var i = 0; i < AlchemyTotal; i++)
       {
           if (i != BrewingSlot)
           {
               AlchemyInventory[i] = -1;
           }
       }
   
       Brewing = false;
       BrewingTimer = 0;
       BrewingPotion = -1;
       BrewingSlot = -1;
   
       // Start ending animation
       BrewingAnimationState = "end";
       sprite_index = sBrewing_End;
       image_index = 0;
       image_speed = 1;
   }

}


// -----------------------------------------
// Brew Button
// -----------------------------------------

if (AlchemyOpen && !Brewing && mouse_check_button_pressed(mb_left))
{
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    var ButtonX = 250 + oInventory.InvPadding;
    var ButtonY = 145;

    var ButtonWidth = sprite_get_width(sBrewButton);
    var ButtonHeight = sprite_get_height(sBrewButton);

    if (point_in_rectangle(
        mx, my,
        ButtonX - ButtonWidth / 2,
        ButtonY - ButtonHeight / 2,
        ButtonX + ButtonWidth / 2,
        ButtonY + ButtonHeight / 2
    ))
    {
        var IngredientCount = 0;
        var FirstIngredientSlot = -1;
        var FirstIngredient = -1;

        // Count the ingredients
        for (var i = 0; i < AlchemyTotal; i++)
        {
            if (AlchemyInventory[i] != -1)
            {
                IngredientCount++;

                if (FirstIngredientSlot == -1)
                {
                    FirstIngredientSlot = i;
                    FirstIngredient = AlchemyInventory[i];
                }
            }
        }


        // -----------------------------------------
        // Find Matching Potion
        // -----------------------------------------

        var FoundPotion = -1;

        if (IngredientCount > 0)
        {
            for (var i = 0; i < array_length(PotionList); i++)
            {
                var Potion = PotionList[i];

                if (Potion.Recipe.Amount == IngredientCount)
                {
                    var IngredientsMatch = true;

                    for (var j = 0; j < AlchemyTotal; j++)
                    {
                        if (AlchemyInventory[j] != -1)
                        {
                            if (AlchemyInventory[j].Name != Potion.Recipe.Ingredient.Name)
                            {
                                IngredientsMatch = false;
                            }
                        }
                    }

                    if (IngredientsMatch)
                    {
                        FoundPotion = Potion;
                        break;
                    }
                }
            }
        }


        // -----------------------------------------
        // Start Brewing
        // -----------------------------------------

        if (FoundPotion != -1)
{
    Brewing = true;
    BrewingPotion = FoundPotion;
    BrewingSlot = FirstIngredientSlot;

    // Start animation
    BrewingAnimationState = "start";
    sprite_index = sBrewing_Start;
    image_index = 0;
    image_speed = 1;



            // -----------------------------------------
            // Brewing Time
            // -----------------------------------------

            var BrewingTime = 0;

            if (variable_struct_exists(FoundPotion, "BrewingTime"))
            {
                BrewingTime = FoundPotion.BrewingTime;
            }

            if (BrewingTime <= 0)
            {
                BrewingTimer = 0;
            }
            else
            {
                BrewingTimer = BrewingTime * game_get_speed(gamespeed_fps);
            }
        }
    }
}


// -----------------------------------------
// Brewing Animation
// -----------------------------------------

if (BrewingAnimationState == "start")
{
    sprite_index = sBrewing_Start;
    image_speed = 1;

    if (image_index >= sprite_get_number(sBrewing_Start) - 1)
    {
        BrewingAnimationState = "brewing";
        image_index = 0;
        image_speed = 0;
    }
}

else if (BrewingAnimationState == "brewing")
{
    sprite_index = sBrewing;
    image_speed = 1;

    // Loop the brewing animation
    if (image_index >= sprite_get_number(sBrewing) - 1)
    {
        image_index = 0;
    }
}

else if (BrewingAnimationState == "end")
{
    sprite_index = sBrewing_End;
    image_speed = 1;

    if (image_index >= sprite_get_number(sBrewing_End) - 1)
    {
        BrewingAnimationState = "normal";

        sprite_index = sAlchemyTable;
        image_index = 1;
        image_speed = 0;
    }
}

else
{
    // Normal table
    sprite_index = sAlchemyTable;
    image_index = 1;
    image_speed = 0;
}
