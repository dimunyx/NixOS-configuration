{
    config,
    pkgs,
    lib,
    ...
}:
{
    environment = {
        shells = with pkgs; [
            nushell
        ];
    };
}