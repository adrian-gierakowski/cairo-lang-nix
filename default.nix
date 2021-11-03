let
  inherit (import ./mach-nix/inputs.nix) pkgs mach-nix;
  version = "0.5.1";
in mach-nix.buildPythonApplication {
  providers = {
    # conda, wheel, sdist, nixpkgs
    # for some reason wheel provides (default) gives us pyyaml 5.4, which doesn't
    # satisfy requirements: >=5.31,<5.4
    pyyaml = "sdist";
  };
  src = pkgs.fetchzip {
    url = "https://github.com/starkware-libs/cairo-lang/releases/download/v${version}/cairo-lang-${version}.zip";
    sha256 = "08n990a7b6mbp7i9hc37wzll787wh4a4jifaylrj8iry4f9vl1c6";
  };
}
