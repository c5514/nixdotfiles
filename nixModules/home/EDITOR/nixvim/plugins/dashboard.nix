{pkgs,...}:
{
	programs.nixvim.plugins.dashboard = {
		enable = true;
		settings = {
			change_to_vcs_root = true;
			config = {
				footer = [ "Neovim configured using Nix"];
				header = [
					"███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
					"████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
					"██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
					"██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
					"██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
					"╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"

	# "                                               _,'|\n"
 #    "                                             .'  /\n"
 #    "                    __                     ,'   '\n"
 #    "                   `  `.                 .'    '\n"
 #    "                    \\   `.             ,'     '\n"
 #    "                     \\    `.          ,      /\n"
 #    "                      .     `.       /      ,\n"
 #    "                      '       ..__../'     /\n"
 #    "                       \\     ,\"'   '      . _.._\n"
 #    "                        \\  ,'             |'    `\"._\n"
 #    "                         |/               ,---.._   `.\n"
 #    "                       ,-|           .   '       `-.  \\\n"
 #    "                     ,'  |     ,   ,'   :           '__\\_\n"
 #    "                     |  /,_   /  ,U|    '            |   .__\n"
 #    "                     `,' `.\\ `./..-'  __ \\           |   `. `.\n"
 #    "                       `\",_|  /     ,\"  `.`._       .|     \\ |\n"
 #    "                      / /_.| j  ---'.     `._`-----`.`     | |\n"
 #    "                     / // ,|`'  `-/' `.      `\"/-+--'    ,'  `.\n"
 #    "                 _,.`,'| / |.'  -,' \\  \\       \\ '._    /     |\n"
 #    " .--.      _,.-\"'   `| L \\ \\__ ,^.__.\\  `.  _,--`._,>+-'  __,-'\n"
 #    ":    \\   ,'          |  | \\          /.   `'      '.  `--'| \\\n"
 #    "'    | ,-.. `'   _,--' ,'  \\        `.\\            7      |,.\\\n"
 #    " `._ '.  .`.    .>  `-.-    |-.\"\"---..-\\        _>`       `.-'\n"
 #    "    `.,' | l  ,' ,>         | `.___,....\\._    ,--``-.\n"
 #    "   j | .'|_|.'  /_         /   _|         \\`\"--+--.   ` ,..._\n"
 #    "   |_`-'/  |     ,' ,.._,.'\"\"\"'\\           `--'    `-..'     `\".\n"
 #    "     \"-'_,+'\\    '^-     |      \\                    /         |\n"
 #    "          |_/         __ \\       .                   `.`.._  ,'`.\n"
 #    "                  _.:'__`'        `,.                  |   `'   |\n"
 #    "                 `--`-..`\"        /--`               ,-`        |\n"
 #    "                   `---'---------'                   \"\"| `#     '.\n"
 #    "                                                       `._,       `:._\n"
 #    "                                                         `|   ,..  |  '.\n"
 #    "                                                         j   '.  `-+---'\n"
 #    "                                                         |,.. |\n"
 #    "                                                          `. `;\n"
 #    "                                                            `' mh\n"
				];
			};
		};
	};
}
