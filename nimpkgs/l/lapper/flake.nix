{
  description = ''fast interval overlaps'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lapper-master".url = "path:./master";
  inputs."lapper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lapper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lapper-v0_1_7".url = "path:./v0_1_7";
  inputs."lapper-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lapper-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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