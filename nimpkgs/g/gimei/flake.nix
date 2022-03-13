{
  description = ''random Japanese name and address generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gimei-master".dir   = "master";
  inputs."gimei-master".owner = "nim-nix-pkgs";
  inputs."gimei-master".ref   = "master";
  inputs."gimei-master".repo  = "gimei";
  inputs."gimei-master".type  = "github";
  inputs."gimei-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gimei-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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