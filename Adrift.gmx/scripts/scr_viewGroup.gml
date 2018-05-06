/// view_dual(padding)
playerAmount = ds_list_size(players);
var xSum = 0;
var ySum = 0; //sum of all players positions
var dxMax = 0;
var dyMax = 0;
for (var i = 0; i < playerAmount; i ++) {
    var player1 = ds_list_find_value(players, 0);
    var player = ds_list_find_value(players, i);
    xSum += player.x;
    ySum += player.y;
    var dx = abs(player.x - player1.x);
    var dy = abs(player.y - player1.y);
    dxMax = max(1, abs(dx), dxMax);
    dyMax = max(1, abs(dy), dyMax);
    }
var vw, vh, vb, vscale;
vb = argument0; vw = view_wport; vh = view_hport;
vscale = max(1, abs(dxMax) / (vw - vb * 2), abs(dyMax) / (vh - vb * 2))
view_wview = vscale * vw
view_hview = vscale * vh
//center view
view_xview = (xSum/playerAmount - view_wview/2)
view_yview = (ySum/playerAmount - view_hview/2)
