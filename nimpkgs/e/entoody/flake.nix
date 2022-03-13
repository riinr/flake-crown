{
  description = ''A component/entity system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."entoody-master".dir   = "master";
  inputs."entoody-master".owner = "nim-nix-pkgs";
  inputs."entoody-master".ref   = "master";
  inputs."entoody-master".repo  = "entoody";
  inputs."entoody-master".type  = "github";
  inputs."entoody-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."entoody-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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