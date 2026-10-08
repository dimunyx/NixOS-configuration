{
  pkgs,
  ...
}:
{
  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gnome
      ];
      config = {
        common = {
          default = [
            "gnome"
          ];
          "org.freedesktop.impl.portal.ScreenCast" = [
            "umbriel"
          ];
          "org.freedesktop.impl.portal.Screenshot" = [
            "umbriel"
          ];
        };
      };
    };
  };
}