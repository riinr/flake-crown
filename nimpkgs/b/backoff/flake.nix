{
  description = ''Implementation of exponential backoff for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."backoff-master".url = "path:./master";
  inputs."backoff-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."backoff-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."backoff-v0_1".url = "path:./v0_1";
  inputs."backoff-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."backoff-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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