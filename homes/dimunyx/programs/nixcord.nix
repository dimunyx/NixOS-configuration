{ inputs, ... }: {
    imports = [
        inputs.nixcord.homeModules.nixcord
    ];
    programs = {
        nixcord = {
            enable = true;
            discord = {
                vencord = {
                    enable = true;
                };
                branches = [
                    "canary"
                ];
            };
            config = {
                useQuickCss = false;
                frameless = true;
            };
        };
    };
}