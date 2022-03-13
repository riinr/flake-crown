{
  description = ''Print-testing for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ptest-master".dir   = "master";
  inputs."ptest-master".owner = "nim-nix-pkgs";
  inputs."ptest-master".ref   = "master";
  inputs."ptest-master".repo  = "ptest";
  inputs."ptest-master".type  = "github";
  inputs."ptest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptest-v0_1_0".dir   = "v0_1_0";
  inputs."ptest-v0_1_0".owner = "nim-nix-pkgs";
  inputs."ptest-v0_1_0".ref   = "master";
  inputs."ptest-v0_1_0".repo  = "ptest";
  inputs."ptest-v0_1_0".type  = "github";
  inputs."ptest-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptest-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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