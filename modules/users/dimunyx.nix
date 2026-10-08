{
  pkgs,
  ...
}:
{
  users = {
    users = {
      dimunyx = {
        shell = pkgs.fish;
        isNormalUser = true;
        extraGroups = [
          "wheel"
          "libvirtd"
          "networkmanager"
        ];
        hashedPasswordFile = toString ./password;
      };
    };
  };
}