{
  description = ''A simple pomodoro timer for the comandline with cli-output and notifications.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pomTimer-master.flake = false;
  inputs.src-pomTimer-master.ref   = "refs/heads/master";
  inputs.src-pomTimer-master.owner = "MnlPhlp";
  inputs.src-pomTimer-master.repo  = "pomTimer";
  inputs.src-pomTimer-master.type  = "github";
  
  inputs."progress".owner = "nim-nix-pkgs";
  inputs."progress".ref   = "master";
  inputs."progress".repo  = "progress";
  inputs."progress".dir   = "v1_1_3";
  inputs."progress".type  = "github";
  inputs."progress".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notify".owner = "nim-nix-pkgs";
  inputs."notify".ref   = "master";
  inputs."notify".repo  = "notify";
  inputs."notify".dir   = "0_1_5";
  inputs."notify".type  = "github";
  inputs."notify".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pomTimer-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-pomTimer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}