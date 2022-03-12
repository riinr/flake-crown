{
  description = ''Type-safe commandline parsing with minimal magic'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."therapist-master".url = "path:./master";
  inputs."therapist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."therapist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."therapist-v0_1_0".url = "path:./v0_1_0";
  inputs."therapist-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."therapist-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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