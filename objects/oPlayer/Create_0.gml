CollisionMap = layer_tilemap_get_id(layer_get_id("Col"));
FloorMap = layer_tilemap_get_id(layer_get_id("Floor"));
layer_set_visible(layer_get_id("Col"), false);

WalkSpeed = 1;
RunSpeed = 1.5;

// Footstep settings
FootstepTimer = 0;
FootstepDelay = 28;

// Collision sizes
CollisionUpWidth = 23;
CollisionUpHeight = 43;

CollisionDownWidth = 23;
CollisionDownHeight = 43;

CollisionLeftWidth = 23;
CollisionLeftHeight = 32;

CollisionRightWidth = 23;
CollisionRightHeight = 32;

// Current facing direction
FacingDirection = "down";

// Sprites

    WalkSpriteL = sPlayer_walk_left;
    WalkSpriteR = sPlayer_walk_right;
    WalkSpriteU = sPlayer_walk_up;
    WalkSpriteD = sPlayer_walk_right; 

    IdleSpriteL = sPlayer_idle_left;
    IdleSpriteR = sPlayer_idle_right;
    IdleSpriteU = sPlayer_idle_up;
    IdleSpriteD = sPlayer_idle_down;


MoveX = 0;
MoveY = 0;
