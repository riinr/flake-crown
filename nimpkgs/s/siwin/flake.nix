{
  description = ''Simple window maker.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."siwin-master".url = "path:./master";
  inputs."siwin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_4".url = "path:./0_4";
  inputs."siwin-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-v0_3".url = "path:./v0_3";
  inputs."siwin-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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