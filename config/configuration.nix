# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
	imports = [
		# Include the results of the hardware scan.
		./hardware-configuration.nix
	];

	boot.loader.efi.efiSysMountPoint = "/boot/efi";
	nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.searchstar = {
		isNormalUser = true;
		extraGroups = [
			"wheel" # Enable ‘sudo’ for the user.
			"networkmanager"
		]; 
	};

	# Use the systemd-boot EFI boot loader.
	boot.loader.efi.canTouchEfiVariables = true;
	boot.loader.grub = {
		enable = true;
		device = "nodev";
		efiSupport = true;
		useOSProber = true;
	};

	# Set your time zone.
	time.timeZone = "Asia/Shanghai";

	networking.networkmanager.enable = true;

	nixpkgs.config.allowUnfree = true;

	environment.systemPackages = with pkgs; [
		python3
		vim
		git
		openssl
		trash-cli
		python312Packages.supervisor

		konsole
		seafile-client
		seafile-shared
		noto-fonts-cjk-sans
		firefox
		vscode
		keepassxc
		element-desktop

		wechat-uos
	];

	# List services that you want to enable:

	# Enable touchpad support (enabled default in most desktopManager).
	services.libinput.enable = true;

	# Enable CUPS to print documents.
	services.printing.enable = true;

	# Enable the OpenSSH daemon.
	services.openssh.enable = true;

	# Enable the X11 windowing system.
	services.xserver.enable = true;

	services.displayManager.sddm.enable = true;
	services.desktopManager.plasma6.enable = true;

	i18n.inputMethod = {
		enable = true;
		type = "fcitx5";
		fcitx5.addons = with pkgs; [
			rime-data
			fcitx5-rime
		];
	};

	xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-kde ];
	xdg.portal.enable = true;
	services.flatpak.enable = true;

	# This value determines the NixOS release from which the default
	# settings for stateful data, like file locations and database versions
	# on your system were taken. It‘s perfectly fine and recommended to leave
	# this value at the release version of the first install of this system.
	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "22.05"; # Did you read the comment?
}

