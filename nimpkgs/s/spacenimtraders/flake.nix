{
  description = ''A new awesome nimble package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spacenimtraders-master".url = "path:./master";
  inputs."spacenimtraders-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacenimtraders-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spacenimtraders-0_2_0".url = "path:./0_2_0";
  inputs."spacenimtraders-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spacenimtraders-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}