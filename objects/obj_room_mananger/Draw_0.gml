/// @description Insert description here
// You can write your code in this editor
if(global.tutorial || global.repeat_tutorial){
	if(!can_show_tutorial) exit;
	draw_set_font(fnt_debug);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	
	draw_set_color(make_color_rgb(0, 66, 4));
	
	draw_rectangle(room_width/2 - 260, 100, room_width/2 + 260, 250, 0);
	
	draw_set_color(c_white);
	
	switch(global.tutorial_level){
			case 0:
				draw_text_ext(room_width/2, 150, "Este jogo consiste em fazer movimentos simples e pintar cenários, aperte a tecla D, para ir para a direita por exemplo", 20, 500);
				break;
			case 1:
				draw_text_ext(room_width/2, 150, "Muito bem, mas você pode ir para 4 direções diferentes W, A, S, D, vá ao menu de controles se tiver duvidas, tente pintar todo o cenário", 20, 500);
				break;
			case 2:
				draw_text_ext(room_width/2, 150, "Isso, é fácil né? vamos complicar um pouco agora, vê que tem um bloco que muda de cor? pois é, ele permite sua passagem de tempos em tempos, passe por ele no momento certo", 20, 500);
				break;
			case 3:
				draw_text_ext(room_width/2, 150, "Você aprende rápido, agora vamos ver uma de suas maiores dores de cabeça neste jogo, vê esse bloco mais escuro? ele atira pixels de tempos em tempos, não seja acertado e pinte todo o cenário", 20, 500);
				break;
			case 4:
				draw_text_ext(room_width/2, 150, "A ultima mecânica presente nesta versão é o switch, você pode passar através ele apenas uma vez, calcule muito bem seus movimentos e pinte tudo, caso precise reiniciar a fase utilize o backspace", 20, 500);
				break;
			case 5:
				draw_text_ext(room_width/2, 150, "Certo! acho que já te apresentei quase tudo, e pra terminarmos você pode conseguir coins, mas os coletáveis somente aparecem em fases bônus, para ganhar coins em fases normais você precisa ser rápido, lembre disso", 20, 500);
				break;
		}
}