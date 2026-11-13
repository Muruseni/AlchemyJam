// Alchemy table inventory
AlchemyWidth = 3;
AlchemyHeight = 1;
AlchemyTotal = 3;

AlchemyInventory = array_create(AlchemyTotal, -1);

// Is the alchemy table currently being used?
AlchemyOpen = false;


// -----------------------------------------
// Brewing
// -----------------------------------------

Brewing = false;
BrewingTimer = 0;
BrewingPotion = -1;
BrewingSlot = -1;


// -----------------------------------------
// Brewing Animation
// -----------------------------------------

BrewingAnimationState = "normal";
BrewingAnimationFrame = 1;


// -----------------------------------------
// Possible Potions
// -----------------------------------------

PotionList = [
    global.ITEM_BLUEPOTIONS,
    global.ITEM_BLUEPOTIONM,
    global.ITEM_BLUEPOTIONL,

    global.ITEM_PINKPOTIONS,
    global.ITEM_PINKPOTIONM,
    global.ITEM_PINKPOTIONL,

    global.ITEM_REDPOTIONS,
    global.ITEM_REDPOTIONM,
    global.ITEM_REDPOTIONL,

    global.ITEM_WHITEPOTIONS,
    global.ITEM_WHITEPOTIONM,
    global.ITEM_WHITEPOTIONL,

    global.ITEM_YELLOWPOTIONS,
    global.ITEM_YELLOWPOTIONM,
    global.ITEM_YELLOWPOTIONL,

    global.ITEM_BLACKPOTIONS,
    global.ITEM_BLACKPOTIONM,
    global.ITEM_BLACKPOTIONL,

    global.ITEM_GREENPOTIONS,
    global.ITEM_GREENPOTIONM,
    global.ITEM_GREENPOTIONL,

    global.ITEM_ORANGEPOTIONS,
    global.ITEM_ORANGEPOTIONM,
    global.ITEM_ORANGEPOTIONL
];


// -----------------------------------------
// Normal Table
// -----------------------------------------

sprite_index = sAlchemyTable;
image_index = 1;
image_speed = 0;
