# Reference: <https://nixos.wiki/wiki/Python>
with import <nixpkgs> {};
with pkgs.python311Packages;
  stdenv.mkDerivation {
    name = "Py3-Venv";

    buildInputs = [
      python311
      pip
      virtualenv
    ];

    shellHook = ''
      SOURCE_DATE_EPOCH=$(date +%s)

      virtualenv --no-setuptools venv > /dev/null
      export PATH=$PWD/venv/bin:$PATH > /dev/null
      # pip install -r requirements.txt > /dev/null
    '';
  }
