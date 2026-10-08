{
  ...
}:
{
  security = {
    doas = {
      enable = true;
      extraRules = [
        {
          users = [
            "dimunyx"
          ];
          keepEnv = true;
          persist = true;
        }
      ];
    };
  };
}