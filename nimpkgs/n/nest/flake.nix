{
  description = ''RESTful URI router'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nest-develop".dir   = "develop";
  inputs."nest-develop".owner = "nim-nix-pkgs";
  inputs."nest-develop".ref   = "master";
  inputs."nest-develop".repo  = "nest";
  inputs."nest-develop".type  = "github";
  inputs."nest-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nest-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nest-master".dir   = "master";
  inputs."nest-master".owner = "nim-nix-pkgs";
  inputs."nest-master".ref   = "master";
  inputs."nest-master".repo  = "nest";
  inputs."nest-master".type  = "github";
  inputs."nest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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