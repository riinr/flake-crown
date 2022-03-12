{
  description = ''Humanize elapsed time'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eternity-master".url = "path:./master";
  inputs."eternity-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eternity-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eternity-v0_2".url = "path:./v0_2";
  inputs."eternity-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eternity-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eternity-v0_3_0".url = "path:./v0_3_0";
  inputs."eternity-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eternity-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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