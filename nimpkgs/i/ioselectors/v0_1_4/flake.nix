{
  description = ''Selectors extension.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ioselectors-v0_1_4.flake = false;
  inputs.src-ioselectors-v0_1_4.ref   = "refs/tags/v0.1.4";
  inputs.src-ioselectors-v0_1_4.owner = "ringabout";
  inputs.src-ioselectors-v0_1_4.repo  = "ioselectors";
  inputs.src-ioselectors-v0_1_4.type  = "github";
  
  inputs."timerwheel".owner = "nim-nix-pkgs";
  inputs."timerwheel".ref   = "master";
  inputs."timerwheel".repo  = "timerwheel";
  inputs."timerwheel".dir   = "v0_1_2";
  inputs."timerwheel".type  = "github";
  inputs."timerwheel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-v0_1_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ioselectors-v0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}