{
  description = ''High-level nim wrapper for C/C++ parsing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hcparse-master".url = "path:./master";
  inputs."hcparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hcparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hcparse-v0_1_2".url = "path:./v0_1_2";
  inputs."hcparse-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hcparse-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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