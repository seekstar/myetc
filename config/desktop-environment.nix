{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		# Need enable in "Extensions" of GNOME
                gnomeExtensions.tray-icons-reloaded
	];

	# Enable the GNOME Desktop Environment.
        services.xserver.displayManager.gdm.enable = true;
        services.xserver.desktopManager.gnome.enable = true;
}

