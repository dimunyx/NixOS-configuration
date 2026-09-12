{
    config,
    pkgs,
    lib,
    ...
}:
{
    environment = {
        variables = {
            SHELL = "fish";
            VISUAL = "code";
            EDITOR = "code";
            BROWSER = "zen";
            NIXOS_OZONE_WL = "1";
        };
    };
}