{
  description = ''Simple linear algebra for nim. Js too.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."snail-master".dir   = "master";
  inputs."snail-master".owner = "nim-nix-pkgs";
  inputs."snail-master".ref   = "master";
  inputs."snail-master".repo  = "snail";
  inputs."snail-master".type  = "github";
  inputs."snail-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snail-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snail-0_2_0".dir   = "0_2_0";
  inputs."snail-0_2_0".owner = "nim-nix-pkgs";
  inputs."snail-0_2_0".ref   = "master";
  inputs."snail-0_2_0".repo  = "snail";
  inputs."snail-0_2_0".type  = "github";
  inputs."snail-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snail-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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