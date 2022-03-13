{
  description = ''Little game library using opengl and sfml'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ludens-master".dir   = "master";
  inputs."ludens-master".owner = "nim-nix-pkgs";
  inputs."ludens-master".ref   = "master";
  inputs."ludens-master".repo  = "ludens";
  inputs."ludens-master".type  = "github";
  inputs."ludens-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ludens-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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