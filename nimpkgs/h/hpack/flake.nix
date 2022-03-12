{
  description = ''HPACK (Header Compression for HTTP/2)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hpack-master".url = "path:./master";
  inputs."hpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpack-v0_1".url = "path:./v0_1";
  inputs."hpack-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpack-v0_1_1".url = "path:./v0_1_1";
  inputs."hpack-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpack-v0_2_0".url = "path:./v0_2_0";
  inputs."hpack-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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