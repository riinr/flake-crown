{
  description = ''Pure nim implementation of MurmurHash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."murmurhash-master".url = "path:./master";
  inputs."murmurhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmurhash-0_3_0".url = "path:./0_3_0";
  inputs."murmurhash-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmurhash-0_4_0".url = "path:./0_4_0";
  inputs."murmurhash-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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