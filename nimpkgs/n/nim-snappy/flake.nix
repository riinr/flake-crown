{
  description = ''Nim implementation of Snappy compression algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."snappy-master".dir   = "master";
  inputs."snappy-master".owner = "nim-nix-pkgs";
  inputs."snappy-master".ref   = "master";
  inputs."snappy-master".repo  = "snappy";
  inputs."snappy-master".type  = "github";
  inputs."snappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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