{
  description = ''Morepretty - Does more than nimpretty.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."morepretty-master".dir   = "master";
  inputs."morepretty-master".owner = "nim-nix-pkgs";
  inputs."morepretty-master".ref   = "master";
  inputs."morepretty-master".repo  = "morepretty";
  inputs."morepretty-master".type  = "github";
  inputs."morepretty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morepretty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."morepretty-0_1_0".dir   = "0_1_0";
  inputs."morepretty-0_1_0".owner = "nim-nix-pkgs";
  inputs."morepretty-0_1_0".ref   = "master";
  inputs."morepretty-0_1_0".repo  = "morepretty";
  inputs."morepretty-0_1_0".type  = "github";
  inputs."morepretty-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."morepretty-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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