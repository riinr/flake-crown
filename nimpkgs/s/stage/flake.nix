{
  description = ''nim tasks apply to git hooks'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stage-master".url = "path:./master";
  inputs."stage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stage-v0_3_5".url = "path:./v0_3_5";
  inputs."stage-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stage-v0_3_6".url = "path:./v0_3_6";
  inputs."stage-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stage-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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