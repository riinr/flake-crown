{
  description = ''ChaCha20 stream cipher'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chacha20-trunk".dir   = "trunk";
  inputs."chacha20-trunk".owner = "nim-nix-pkgs";
  inputs."chacha20-trunk".ref   = "master";
  inputs."chacha20-trunk".repo  = "chacha20";
  inputs."chacha20-trunk".type  = "github";
  inputs."chacha20-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chacha20-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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