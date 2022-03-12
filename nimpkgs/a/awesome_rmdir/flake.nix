{
  description = ''Command to remove acceptably empty directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."awesome_rmdir-develop".url = "path:./develop";
  inputs."awesome_rmdir-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awesome_rmdir-master".url = "path:./master";
  inputs."awesome_rmdir-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awesome_rmdir-v0_2_0".url = "path:./v0_2_0";
  inputs."awesome_rmdir-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awesome_rmdir-v0_2_1".url = "path:./v0_2_1";
  inputs."awesome_rmdir-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awesome_rmdir-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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