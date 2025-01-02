{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    python311Full
    poetry
  ];

  # We are not concerned with encrypting pypi credentials in this environment
  shellHook = ''
    export PYTHON_KEYRING_BACKEND=keyring.backends.fail.Keyring
  '';
}
