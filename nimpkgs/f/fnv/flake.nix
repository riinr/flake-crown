{
  description = ''FNV-1 and FNV-1a non-cryptographic hash functions (documentation hosted at: http://ryuk.ooo/nimdocs/fnv/fnv.html)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fnv-master".url = "path:./master";
  inputs."fnv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fnv-0_1_0".url = "path:./0_1_0";
  inputs."fnv-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnv-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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