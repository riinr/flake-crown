{
  description = ''A dsl for writing macros in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."breeze-master".dir   = "master";
  inputs."breeze-master".owner = "nim-nix-pkgs";
  inputs."breeze-master".ref   = "master";
  inputs."breeze-master".repo  = "breeze";
  inputs."breeze-master".type  = "github";
  inputs."breeze-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."breeze-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."breeze-v0_0_4".dir   = "v0_0_4";
  inputs."breeze-v0_0_4".owner = "nim-nix-pkgs";
  inputs."breeze-v0_0_4".ref   = "master";
  inputs."breeze-v0_0_4".repo  = "breeze";
  inputs."breeze-v0_0_4".type  = "github";
  inputs."breeze-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."breeze-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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