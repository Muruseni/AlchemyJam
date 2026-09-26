

    enum ItemType{
        Resource,
        Potion,
    }
    
    global.ITEM_BLUEFLOWER = { 
        Name: "Blue Flower",
        Sprite: sBlueFlower,
        Type: ItemType.Resource,
        Description: "Found growing by the river side, used in Defence Potions",
    }
    global.ITEM_PINKFLOWER = { 
        Name: "Pink Flower",
        Sprite: sPinkFlower,
        Type: ItemType.Resource,
        Description: "Found in the swamps, used in Love Potions",
    }
    global.ITEM_REDFLOWER = { 
        Name: "Red Flower",
        Sprite: sRedFlower,
        Type: ItemType.Resource,
        Description: "Found in the mountians, used in Health Potions",
    }
    global.ITEM_WHITEFLOWER = { 
        Name: "White Flower",
        Sprite: sWhiteFlower,
        Type: ItemType.Resource,
        Description: "Found in the tundra, used in Purifcation Potions",
    }
    global.ITEM_YELLOWFLOWER = { 
        Name: "Yellow Flower",
        Sprite: sYellowFlower,
        Type: ItemType.Resource,
        Description: "Found in the plains and mountians, used in Energy Potions",
    }
    global.ITEM_BLACKMUSHROOM = { 
        Name: "Black Mushroom",
        Sprite: sBlackMushroom,
        Type: ItemType.Resource,
        Description: "Found deep in the caves, used in Withering Potions",
    }
    global.ITEM_GREENMUSHROOM = { 
        Name: "Green Mushroom",
        Sprite: sGreenMushroom,
        Type: ItemType.Resource,
        Description: "Found in the forest, used in Poison Potions",
    }
    global.ITEM_ORANGEMUSHROOM = { 
        Name: "Orange Mushroom",
        Sprite: sOrangeMushroom,
        Type: ItemType.Resource,
        Description: "Found in the mountians and caves, used in Debuff Potions",
    }
    
    //Potions
    
    //Defence
    global.ITEM_BLUEPOTIONM = {
        Name: "Defence Potion M",
        Sprite: sblue_vial,
        Type: ItemType.Potion,
        Description: "", 
        Price: 5,
    }
    global.ITEM_BLUEPOTIONM = {
        Name: "Defence Potion M",
        Sprite: sblue_hexagon,
        Type: ItemType.Potion,
        Description: "", 
        Price: 11,
    }
    global.ITEM_BLUEPOTIONL = {
        Name: "Defence Potion L",
        Sprite: sblue_diamond,
        Type: ItemType.Potion,
        Description: "", 
        Price: 19,
    }
    
    //Love
    global.ITEM_PINKPOTIONS = {
        Name: "Love Potion S",
        Sprite: spink_vial,
        Type: ItemType.Potion,
        Description: "", 
        Price: 15,
    }
    global.ITEM_PINKPOTIONM = {
        Name: "Love Potion M",
        Sprite: spink_hexagon,
        Type: ItemType.Potion,
        Description: "", 
        Price: 25,
    }
    global.ITEM_PINKPOTIONL = {
        Name: "Love Potion L",
        Sprite: spink_heart,
        Type: ItemType.Potion,
        Description: "*USE RESPONSIBLY*", 
        Price: 30,
    }
    
    //Health
    global.ITEM_REDPOTIONS = {
        Name: "Health Potion S",
        Sprite: sred_vial,
        Type: ItemType.Potion,
        Description: "", 
        Price: 4,
    }
    global.ITEM_REDPOTIONM = {
        Name: "Health Potion M",
        Sprite: sred_hexagon,
        Type: ItemType.Potion,
        Description: "", 
        Price: 8,
    }
    global.ITEM_REDPOTIONL = {
        Name: "Health Potion L",
        Sprite: sred_heart,
        Type: ItemType.Potion,
        Description: " -Caution not to confuse with a Love Potion", 
        Price: 15,
    }
    
    //Purifaction
    global.ITEM_WHITEPOTIONS = {
        Name: "Purifcation Potion S",
        Sprite: spink_vial,
        Type: ItemType.Potion,
        Description: "Can cure most illnesses or diseases -Has a debuff effect on the undead and unholy", 
        Price: 5,
    }
    global.ITEM_WHITEPOTIONM = {
        Name: "Purifcation Potion M",
        Sprite: spink_hexagon,
        Type: ItemType.Potion,
        Description: "Can cure most illnesses or diseases -Has a debuff effect on the undead and unholy", 
        Price: 14,
    }
    global.ITEM_WHITEPOTIONL = {
        Name: "Purifcation Potion L",
        Sprite: spink_pyramid,
        Type: ItemType.Potion,
        Description: "Can cure most illnesses or diseases -Has a debuff effect on the undead and unholy", 
        Price: 22,
    }
    
    //Energy
    global.ITEM_YELLOWPOTIONS = {
        Name: "Energy Potion S",
        Sprite: syellow_vial,
        Description: "Like a redbull, but instantanious", 
        Price: 6,
    }
    global.ITEM_YELLOWPOTIONM = {
        Name: "Energy Potion M",
        Sprite: syellow_hexagon,
        Description: "Like a redbull, but instantanious", 
        Price: 14,
    }
    global.ITEM_YELLOWPOTIONL = {
        Name: "Energy Potion L",
        Sprite: syellow_pyramid,
        Description: "Like a redbull, but instantanious -Caution of consumption in large quantities", 
        Price: 20,
    }
    
    //Withering
    global.ITEM_BLACKPOTIONS = {
        Name: "Withering Potion S",
        Sprite: sblack_droplet,
        Type: ItemType.Potion,
        Description: "Side effect may include: stomach pains, headaches, minor illness, weakness, nausia, blindness, loss of limb, coagulated bodily fluids, death, spontainous combustion", 
    }
    global.ITEM_BLACKPOTIONM = {
        Name: "Withering Potion M",
        Sprite: sblack_longdiamond,
        Type: ItemType.Potion,
        Description: "Side effect may include: stomach pains, headaches, minor illness, weakness, nausia, blindness, loss of limb, coagulated bodily fluids, death, spontainous combustion", 
    }
    global.ITEM_BLACKPOTIONL = {
        Name: "Withering Potion L",
        Sprite: sblack_moon,
        Type: ItemType.Potion,
        Description: "Side effect may include: stomach pains, headaches, minor illness, major illness, weakness, nausia, blindness, loss of limb, coagulated bodily fluids, death, spontainous combustion", 
    }
    
    //Poison
    global.ITEM_GREENPOTIONS = {
        Name: "Poison Potion S",
        Sprite: sgreen_droplet,
        Type: ItemType.Potion,
        Description: "Dose Accordingly", 
        Price: 9,
    }
    global.ITEM_GREENPOTIONM = {
        Name: "Poison Potion M",
        Sprite: sgreen_rectangle,
        Type: ItemType.Potion,
        Description: "Dose Accordingly", 
        Price: 18,
    }
    global.ITEM_GREENPOTIONL = {
        Name: "Poison Potion L",
        Sprite: sgreen_round,
        Type: ItemType.Potion,
        Description: " Dose Accordingly -LARGE QUANTITES NOT FOR CONSUMER PURCHASE.", 
        Price: 25,
    }
    
    //Debuff
    global.ITEM_ORANGEPOTIONS = {
        Name: "Debuff Potion S",
        Sprite: sorange_droplet,
        Type: ItemType.Potion,
        Description: "Commonly used in battles against particularly pain in the ass foes -Grants purification to the undead and unholy.", 
        Price: 7,
    }
    global.ITEM_ORANGEPOTIONM = {
        Name: "Debuff Potion M",
        Sprite: sorange_rectangle,
        Type: ItemType.Potion,
        Description: "Commonly used in battles against particularly pain in the ass foes -Grants purification to the undead and unholy.", 
        Price: 15,
    }
    global.ITEM_ORANGEPOTIONL = {
        Name: "Debuff Potion L",
        Sprite: sorange_round,
        Type: ItemType.Potion,
        Description: "Commonly used in battles against particularly pain in the ass foes -Grants purification to the undead and unholy.", 
        Price: 21,
    }
