{
  description = ''A Nim client for Todoist's REST API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."todoist-main".dir   = "main";
  inputs."todoist-main".owner = "nim-nix-pkgs";
  inputs."todoist-main".ref   = "master";
  inputs."todoist-main".repo  = "todoist";
  inputs."todoist-main".type  = "github";
  inputs."todoist-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."todoist-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."todoist-v0_1_0".dir   = "v0_1_0";
  inputs."todoist-v0_1_0".owner = "nim-nix-pkgs";
  inputs."todoist-v0_1_0".ref   = "master";
  inputs."todoist-v0_1_0".repo  = "todoist";
  inputs."todoist-v0_1_0".type  = "github";
  inputs."todoist-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."todoist-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."todoist-v0_1_1".dir   = "v0_1_1";
  inputs."todoist-v0_1_1".owner = "nim-nix-pkgs";
  inputs."todoist-v0_1_1".ref   = "master";
  inputs."todoist-v0_1_1".repo  = "todoist";
  inputs."todoist-v0_1_1".type  = "github";
  inputs."todoist-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."todoist-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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