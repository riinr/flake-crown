{
  description = ''A new awesome nimble package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spacenimtraders-master".dir   = "master";
  inputs."spacenimtraders-master".owner = "nim-nix-pkgs";
  inputs."spacenimtraders-master".ref   = "master";
  inputs."spacenimtraders-master".repo  = "spacenimtraders";
  inputs."spacenimtraders-master".type  = "github";
  inputs."spacenimtraders-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacenimtraders-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spacenimtraders-0_2_0".dir   = "0_2_0";
  inputs."spacenimtraders-0_2_0".owner = "nim-nix-pkgs";
  inputs."spacenimtraders-0_2_0".ref   = "master";
  inputs."spacenimtraders-0_2_0".repo  = "spacenimtraders";
  inputs."spacenimtraders-0_2_0".type  = "github";
  inputs."spacenimtraders-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacenimtraders-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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