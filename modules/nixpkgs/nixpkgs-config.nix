{
  inputs,
  ...
}:
{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
    overlays = [
      inputs.nix-cachyos-kernel.overlays.default
    ];
  };
}