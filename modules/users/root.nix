{
  pkgs,
  ...
}:
{
  users = {
    users = {
      root = {
        shell = pkgs.fish;
        hashedPasswordFile = toString ./password;
      };
    };
  };
}