let
  inherit (import ./mach-nix/inputs.nix) pkgs mach-nix;
in mach-nix.buildPythonApplication {
  src = pkgs.fetchzip {
    url = https://github.com/starkware-libs/cairo-lang/releases/download/v0.0.3/cairo-lang-0.0.3.zip;
    sha256 = "17ksbmgx2msafd7wzg5ra72rmq73rk2ih14ri9a8chvppmmlhnyp";
  };
}
