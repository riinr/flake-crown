{
  description = ''Wrapper for NanoVG vector graphics library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nvg-master".dir   = "master";
  inputs."nvg-master".owner = "nim-nix-pkgs";
  inputs."nvg-master".ref   = "master";
  inputs."nvg-master".repo  = "nvg";
  inputs."nvg-master".type  = "github";
  inputs."nvg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nvg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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