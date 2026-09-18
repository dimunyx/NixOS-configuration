{
    config,
    pkgs,
    lib,
    ...
}:
{
    environment = {
        variables = {
            EDITOR = "code";
            BROWSER = "zen";
        };
    };
}