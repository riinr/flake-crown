{
  description = ''Test runner'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-testrunner-0_1_0.flake = false;
  inputs.src-testrunner-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-testrunner-0_1_0.owner = "FedericoCeratto";
  inputs.src-testrunner-0_1_0.repo  = "nim-testrunner";
  inputs.src-testrunner-0_1_0.type  = "github";
  
  inputs."libnotify".owner = "nim-nix-pkgs";
  inputs."libnotify".ref   = "master";
  inputs."libnotify".repo  = "libnotify";
  inputs."libnotify".dir   = "master";
  inputs."libnotify".type  = "github";
  inputs."libnotify".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnotify".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fswatch".owner = "nim-nix-pkgs";
  inputs."fswatch".ref   = "master";
  inputs."fswatch".repo  = "fswatch";
  inputs."fswatch".dir   = "0_1_0";
  inputs."fswatch".type  = "github";
  inputs."fswatch".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-testrunner-0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-testrunner-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}