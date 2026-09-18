{
    config,
    pkgs,
    lib,
    ...
}:
{
    security = {
        polkit = {
            enable = true;
            enablePkexecWrapper = true;
        };
    };
}