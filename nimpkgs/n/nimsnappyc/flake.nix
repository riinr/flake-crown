{
  description = ''Wrapper for the Snappy-C compression library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsnappyc-master".dir   = "master";
  inputs."nimsnappyc-master".owner = "nim-nix-pkgs";
  inputs."nimsnappyc-master".ref   = "master";
  inputs."nimsnappyc-master".repo  = "nimsnappyc";
  inputs."nimsnappyc-master".type  = "github";
  inputs."nimsnappyc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsnappyc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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