{
  description = ''Create HyperText with Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hyperscript-master".dir   = "master";
  inputs."hyperscript-master".owner = "nim-nix-pkgs";
  inputs."hyperscript-master".ref   = "master";
  inputs."hyperscript-master".repo  = "hyperscript";
  inputs."hyperscript-master".type  = "github";
  inputs."hyperscript-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hyperscript-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hyperscript-v0_1-alpha".dir   = "v0_1-alpha";
  inputs."hyperscript-v0_1-alpha".owner = "nim-nix-pkgs";
  inputs."hyperscript-v0_1-alpha".ref   = "master";
  inputs."hyperscript-v0_1-alpha".repo  = "hyperscript";
  inputs."hyperscript-v0_1-alpha".type  = "github";
  inputs."hyperscript-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hyperscript-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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