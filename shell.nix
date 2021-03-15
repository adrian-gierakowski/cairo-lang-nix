let
  inherit (import ./mach-nix/inputs.nix) pkgs mach-nix;
in pkgs.mkShell {
  buildInputs = [
    mach-nix.mach-nix
    (import ./default.nix)
  ];
}
