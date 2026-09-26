  if(oGUI.InventoryOpen) {
    if(!InAlchTable){
      for(var i = 0; i < array_length(Inventory); i++){
          var xx = 150 - ((InvWidth -1)* InvPadding)/2 + (i mod InvWidth * InvPadding);
          var yy = 200 - ((InvHeight -1)* InvPadding)/2 + (i div InvWidth * InvPadding);
          
          holderxx = xx;
          holderyy = yy;
          
          var IsHover = false;
          var mx = device_mouse_x_to_gui(0);
          var my = device_mouse_y_to_gui(0);
          var sw = sprite_get_width(sInventorySlot);
          
          if point_in_rectangle(mx,my,xx-sw/2,yy-sw/2,xx+sw/2,yy+sw/2){
              IsHover = true;
              InvAnims[i].Size = lerp(InvAnims[i].Size, 1.1, .2);
          } else{
              InvAnims[i].Size = lerp(InvAnims[i].Size, 1,.1);
          }
          
          var sidemod = InvAnims[i].Size;
          
          if (!IsHover){draw_sprite_ext(sInventorySlot, 0, xx, yy,1*sidemod,1*sidemod,0,c_white,1);}
          else{draw_sprite_ext(sInventorySlot, 0, xx, yy,1*sidemod,1*sidemod,0,c_white,0.80);}
          
          //Draw Items
          if (Inventory[i] != -1) {
              var Sprite = Inventory[i].Sprite;
              draw_sprite_ext(Sprite, 0, xx, yy,1*sidemod,1*sidemod,0,c_white,1);
          }
          
          //Draw Bg
      }
       
   } else { //If in alch table Draw further to the left - fix this
       for(var i = 0; i < array_length(Inventory); i++){
          var xx = 50 - ((InvWidth -1)* InvPadding)/2 + (i mod InvWidth * InvPadding);
          var yy = 100 - ((InvHeight -1)* InvPadding)/2 + (i div InvWidth * InvPadding);
          
          holderxx = xx;
          holderyy = yy;
          
          var IsHover = false;
          var mx = device_mouse_x_to_gui(0);
          var my = device_mouse_y_to_gui(0);
          var sw = sprite_get_width(sInventorySlot);
          
          if point_in_rectangle(mx,my,xx-sw/2,yy-sw/2,xx+sw/2,yy+sw/2){
              IsHover = true;
              InvAnims[i].Size = lerp(InvAnims[i].Size, 1.1, .2);
          } else{
              InvAnims[i].Size = lerp(InvAnims[i].Size, 1,.1);
          }
          
          var sidemod = InvAnims[i].Size;
          
          if (!IsHover){draw_sprite_ext(sInventorySlot, 0, xx, yy,1*sidemod,1*sidemod,0,c_white,1);}
          else{draw_sprite_ext(sInventorySlot, 0, xx, yy,1*sidemod,1*sidemod,0,c_white,0.80);}
          
          //Draw Items
          if Inventory[i] != -1 {
              var Sprite = Inventory[i].Sprite;
              draw_sprite_ext(Sprite, 0, xx, yy,1*sidemod,1*sidemod,0,c_white,1);
          }
          
          //Draw Bg
      }
   }
}