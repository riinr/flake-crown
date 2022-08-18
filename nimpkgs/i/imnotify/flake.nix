{
  description = ''A notifications library for Dear ImGui'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."imnotify-main".dir   = "main";
  inputs."imnotify-main".owner = "nim-nix-pkgs";
  inputs."imnotify-main".ref   = "master";
  inputs."imnotify-main".repo  = "imnotify";
  inputs."imnotify-main".type  = "github";
  inputs."imnotify-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imnotify-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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