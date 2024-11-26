{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    lzip
    python3
    python3Packages.requests
    python3Packages.tqdm
    python3Packages.inquirerpy
  ];
}
