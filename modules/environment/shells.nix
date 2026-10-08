{
  pkgs,
  ...
}:
{
  environment = {
    shells = with pkgs; [
      fish
    ];
  };
}