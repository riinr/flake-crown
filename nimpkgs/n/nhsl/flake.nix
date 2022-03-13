{
  description = ''Nim Hessian Serialization Library encodes/decodes data into the Hessian binary protocol'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nhsl-master".dir   = "master";
  inputs."nhsl-master".owner = "nim-nix-pkgs";
  inputs."nhsl-master".ref   = "master";
  inputs."nhsl-master".repo  = "nhsl";
  inputs."nhsl-master".type  = "github";
  inputs."nhsl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nhsl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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