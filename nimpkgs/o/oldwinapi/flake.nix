{
  description = ''Old Win API library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oldwinapi-master".url = "path:./master";
  inputs."oldwinapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oldwinapi-v2_1_0".url = "path:./v2_1_0";
  inputs."oldwinapi-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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