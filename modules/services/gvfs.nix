{
    config,
    pkgs,
    lib,
    ...
}:
{
    services = {
        gvfs = {
                enable = true;
        };
    };
}