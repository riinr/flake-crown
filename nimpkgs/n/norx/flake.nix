{
  description = ''A wrapper of the ORX 2.5D game engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."norx-master".dir   = "master";
  inputs."norx-master".owner = "nim-nix-pkgs";
  inputs."norx-master".ref   = "master";
  inputs."norx-master".repo  = "norx";
  inputs."norx-master".type  = "github";
  inputs."norx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norx-0_4_2".dir   = "0_4_2";
  inputs."norx-0_4_2".owner = "nim-nix-pkgs";
  inputs."norx-0_4_2".ref   = "master";
  inputs."norx-0_4_2".repo  = "norx";
  inputs."norx-0_4_2".type  = "github";
  inputs."norx-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norx-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norx-0_4_3".dir   = "0_4_3";
  inputs."norx-0_4_3".owner = "nim-nix-pkgs";
  inputs."norx-0_4_3".ref   = "master";
  inputs."norx-0_4_3".repo  = "norx";
  inputs."norx-0_4_3".type  = "github";
  inputs."norx-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norx-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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