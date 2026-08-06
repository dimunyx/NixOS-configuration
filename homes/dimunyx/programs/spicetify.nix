{ pkgs, inputs, ... }: {
        imports = [
                inputs.spicetify-nix.homeManagerModules.default
        ];
        programs = {
                spicetify =
                        let
                                spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
                        in {
                                enable = true;
                                theme = spicePkgs.themes.dribbblish;
                                enabledExtensions = with spicePkgs.extensions; [
                                        adblockify
                                ];
                                colorScheme = "custom";
                                customColorScheme = {
                                        text = "EBFAFA";
                                        subtext = "ABB4DA";
                                        main = "212337";
                                        main-elevated = "212337";
                                        main-transition = "222539";
                                        highlight = "25283C";
                                        highlight-elevated = "39405B";
                                        sidebar = "212337";
                                        player = "212337";
                                        card = "212337";
                                        shadow = "212337";
                                        selected-row = "EBFAFA";
                                        button = "37F499";
                                        button-active = "37F499";
                                        button-disabled = "37F499";
                                        tab-active = "212337";
                                        notification = "A48CF2";
                                        notification-error = "F16C75";
                                        misc = "212337";
                                        play-button = "04D1F9";
                                        play-button-active = "04D1F9";
                                        progress-fg = "37F499";
                                        progress-bg = "212337";
                                        heart = "F16C75";
                                        pagelink-active = "DBD1FA";
                                        radio-btn-active = "DBD1FA";
                                };
                        };
        };
}
