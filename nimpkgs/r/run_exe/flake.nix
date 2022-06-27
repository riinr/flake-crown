{
  description = ''A Scripting ToolBox that provides a declarative DSL for ultimate productivity!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."run_exe-main".dir   = "main";
  inputs."run_exe-main".owner = "nim-nix-pkgs";
  inputs."run_exe-main".ref   = "master";
  inputs."run_exe-main".repo  = "run_exe";
  inputs."run_exe-main".type  = "github";
  inputs."run_exe-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."run_exe-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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