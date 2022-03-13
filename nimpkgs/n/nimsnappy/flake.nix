{
  description = ''Nim wrapper for the snappy compression library. there is also a high-level API for easy use'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsnappy-master".dir   = "master";
  inputs."nimsnappy-master".owner = "nim-nix-pkgs";
  inputs."nimsnappy-master".ref   = "master";
  inputs."nimsnappy-master".repo  = "nimsnappy";
  inputs."nimsnappy-master".type  = "github";
  inputs."nimsnappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsnappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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