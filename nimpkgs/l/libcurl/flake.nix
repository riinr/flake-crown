{
  description = ''Nim wrapper for libcurl.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libcurl-master".url = "path:./master";
  inputs."libcurl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libcurl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libcurl-v1_0_0".url = "path:./v1_0_0";
  inputs."libcurl-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libcurl-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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