// -- Input --

LeftKey = keyboard_check(ord("A"));
RightKey = keyboard_check(ord("D"));
UpKey = keyboard_check(ord("W"));
DownKey = keyboard_check(ord("S"));
InteractKey = keyboard_check_pressed(ord("E"));


// -- Movement --

MoveX = RightKey - LeftKey;
MoveY = DownKey - UpKey;


// Prevent diagonal movement from being faster

if (MoveX != 0 || MoveY != 0)
{
    var MoveLength = point_distance(0, 0, MoveX, MoveY);

    MoveX = (MoveX / MoveLength) * WalkSpeed;
    MoveY = (MoveY / MoveLength) * WalkSpeed;
}

if (MoveX > 0)
{
    FacingDirection = "right";
}
else if (MoveX < 0)
{
    FacingDirection = "left";
}
else if (MoveY > 0)
{
    FacingDirection = "down";
}
else if (MoveY < 0)
{
    FacingDirection = "up";
}


// Collision

scSpriteCollision();


// Animation

scSpriteAnimate();


// Footsteps

scFootstepSound();