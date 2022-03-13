{
  description = ''a simple test framework for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsuite-develop".dir   = "develop";
  inputs."nimsuite-develop".owner = "nim-nix-pkgs";
  inputs."nimsuite-develop".ref   = "master";
  inputs."nimsuite-develop".repo  = "nimsuite";
  inputs."nimsuite-develop".type  = "github";
  inputs."nimsuite-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsuite-master".dir   = "master";
  inputs."nimsuite-master".owner = "nim-nix-pkgs";
  inputs."nimsuite-master".ref   = "master";
  inputs."nimsuite-master".repo  = "nimsuite";
  inputs."nimsuite-master".type  = "github";
  inputs."nimsuite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsuite-0_1_0".dir   = "0_1_0";
  inputs."nimsuite-0_1_0".owner = "nim-nix-pkgs";
  inputs."nimsuite-0_1_0".ref   = "master";
  inputs."nimsuite-0_1_0".repo  = "nimsuite";
  inputs."nimsuite-0_1_0".type  = "github";
  inputs."nimsuite-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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