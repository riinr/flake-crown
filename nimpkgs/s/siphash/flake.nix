{
  description = ''SipHash, a pseudorandom function optimized for short messages.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."siphash-master".url = "path:./master";
  inputs."siphash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siphash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siphash-v0_1_0".url = "path:./v0_1_0";
  inputs."siphash-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siphash-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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