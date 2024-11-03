{pkgs,...}:
{
	home.packages = [ pkgs.obsidian ];
	programs.nixvim.plugins.obsidian = {
		enable = true;
		settings = {
		completion = {
			min_chars = 2;
			nvim_cmp = true;
		};
		new_notes_location = "current_dir";
		workspaces = [
				{
					name = "work";
					path = "~/obsidian/work";
				}
				{
					name = "startup";
					path = "~/obsidian/startup";
				}
			];
		};
	};
}