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
                                        text = "cdd6f4";
                                        subtext = "a6adc8";
                                        main = "1e1e2e";
                                        main-elevated = "1e1e2e";
                                        main-transition = "212232";
                                        highlight = "272839";
                                        highlight-elevated = "42435c";
                                        sidebar = "1e1e2e";
                                        player = "1e1e2e";
                                        card = "1e1e2e";
                                        shadow = "1e1e2e";
                                        selected-row = "cdd6f4";
                                        button = "89b4fa";
                                        button-active = "89b4fa";
                                        button-disabled = "89b4fa";
                                        tab-active = "1e1e2e";
                                        notification = "cba6f7";
                                        notification-error = "f38ba8";
                                        misc = "1e1e2e";
                                        play-button = "b4befe";
                                        play-button-active = "b4befe";
                                        progress-fg = "89b4fa";
                                        progress-bg = "1e1e2e";
                                        heart = "f38ba8";
                                        pagelink-active = "e4d0fb";
                                        radio-btn-active = "e4d0fb";
                                };
                        };
        };
}
