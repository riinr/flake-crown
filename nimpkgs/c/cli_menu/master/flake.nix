{
  description = ''A library to create interactive commandline menus without writing boilerplate code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cli_menu-master.flake = false;
  inputs.src-cli_menu-master.owner = "MnlPhlp";
  inputs.src-cli_menu-master.ref   = "refs/heads/master";
  inputs.src-cli_menu-master.repo  = "cli_menu";
  inputs.src-cli_menu-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cli_menu-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cli_menu-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}