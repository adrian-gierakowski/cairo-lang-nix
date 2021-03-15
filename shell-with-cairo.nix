let
  inherit (import ./mach-nix/inputs.nix) pkgs mach-nix;
in pkgs.mkShell {
  propagatedbuildInputs = [
    mach-nix.mach-nix
    (import ./default.nix)
  ];
}
