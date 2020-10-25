///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
//By Blokatt - @blokatt, blokatt.net
function scr_draw_text_color_outline(x, y, text, textColor1, textColor2, textAlpha, oulineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle){
	var i;
	for (i = 0; i < 360; i += 360 / outlineQuality){
	    draw_text_transformed_color(x + lengthdir_x(outlineThickness, i), y + lengthdir_y(outlineThickness, i), string(text), xscale, yscale, angle, oulineColor1, oulineColor1, outlineColor2, outlineColor2, outlineAlpha);
	}
	draw_text_transformed_color(x, y, string(text), xscale, yscale, angle, textColor1, textColor1, textColor2, textColor2, textAlpha);
}