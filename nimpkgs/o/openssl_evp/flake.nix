{
  description = ''Wrapper for OpenSSL's EVP interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openssl_evp-master".dir   = "master";
  inputs."openssl_evp-master".owner = "nim-nix-pkgs";
  inputs."openssl_evp-master".ref   = "master";
  inputs."openssl_evp-master".repo  = "openssl_evp";
  inputs."openssl_evp-master".type  = "github";
  inputs."openssl_evp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openssl_evp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}