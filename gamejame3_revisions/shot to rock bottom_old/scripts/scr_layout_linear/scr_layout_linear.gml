var spr_avatar_width = 64; // TODO: Need to read this from spr_avatar
var totalWidth = (self.max_players * spr_avatar_width) + (self.max_players * self.avatar_spacing);
var leftEdge = self.x - (totalWidth / 2);

var offset = 0;

for (var i = 0; i < self.max_players; i++) {
	var positionX = leftEdge + offset;
	self.players[i] = instance_create_layer(positionX, self.y, layer, obj_avatar_select);
	
	offset = offset + obj_avatar_select.sprite_width + self.avatar_spacing;
}
