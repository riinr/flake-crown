{
  description = ''Nim implementation of minhash algoritim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."minhash-master".dir   = "master";
  inputs."minhash-master".owner = "nim-nix-pkgs";
  inputs."minhash-master".ref   = "master";
  inputs."minhash-master".repo  = "minhash";
  inputs."minhash-master".type  = "github";
  inputs."minhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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