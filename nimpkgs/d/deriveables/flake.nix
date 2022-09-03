{
  description = ''Small library to generate procedures with a type derivation system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."deriveables-master".dir   = "master";
  inputs."deriveables-master".owner = "nim-nix-pkgs";
  inputs."deriveables-master".ref   = "master";
  inputs."deriveables-master".repo  = "deriveables";
  inputs."deriveables-master".type  = "github";
  inputs."deriveables-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deriveables-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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