{
  description = ''Kinto Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kinto-master".url = "path:./master";
  inputs."kinto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kinto-0_2_0".url = "path:./0_2_0";
  inputs."kinto-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kinto-0_2_2".url = "path:./0_2_2";
  inputs."kinto-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kinto-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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