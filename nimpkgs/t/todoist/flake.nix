{
  description = ''A Nim client for Todoist's REST API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."todoist-main".url = "path:./main";
  inputs."todoist-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."todoist-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."todoist-v0_1_0".url = "path:./v0_1_0";
  inputs."todoist-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."todoist-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."todoist-v0_1_1".url = "path:./v0_1_1";
  inputs."todoist-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."todoist-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}