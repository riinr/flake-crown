{
  description = ''Small library to automatically generate type-bound templates from files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."autotemplate-master".dir   = "master";
  inputs."autotemplate-master".owner = "nim-nix-pkgs";
  inputs."autotemplate-master".ref   = "master";
  inputs."autotemplate-master".repo  = "autotemplate";
  inputs."autotemplate-master".type  = "github";
  inputs."autotemplate-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autotemplate-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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