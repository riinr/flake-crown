{
  description = ''Nim GUI Automation Linux, simulate user interaction, mouse and keyboard.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xdo-master".dir   = "master";
  inputs."xdo-master".owner = "nim-nix-pkgs";
  inputs."xdo-master".ref   = "master";
  inputs."xdo-master".repo  = "xdo";
  inputs."xdo-master".type  = "github";
  inputs."xdo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xdo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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