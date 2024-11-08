{pkgs, ...}:
{
	home.packages = with pkgs; [
		waypaper
	];
	xdg.configFile."waypaper/config.ini".text = ''
		[Settings]
		language = en
		folder = /home/c5514/Pictures/nixgrub
		wallpaper = /home/c5514/Pictures
		backend = swww
		monitors = All
		fill = Fill
		sort = name
		color = #F9F06B
		subfolders = False
		number_of_columns = 3
		post_command = wal -s -t -i $wallpaper
		swww_transition_type = any
		swww_transition_step = 90
		swww_transition_angle = 0
		swww_transition_duration = 2
		show_hidden = False
		show_gifs_only = False
	'';
}