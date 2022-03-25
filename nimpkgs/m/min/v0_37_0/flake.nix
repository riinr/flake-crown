{
  description = ''A tiny concatenative programming language and shell.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-min-v0_37_0.flake = false;
  inputs.src-min-v0_37_0.ref   = "refs/tags/v0.37.0";
  inputs.src-min-v0_37_0.owner = "h3rald";
  inputs.src-min-v0_37_0.repo  = "min";
  inputs.src-min-v0_37_0.type  = "github";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_9_7";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-min-v0_37_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-min-v0_37_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}