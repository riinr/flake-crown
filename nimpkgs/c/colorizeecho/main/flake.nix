{
  description = ''colorizeEcho is a package which colorize echo message on Windows command prompt.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-colorizeEcho-main.flake = false;
  inputs.src-colorizeEcho-main.ref   = "refs/heads/main";
  inputs.src-colorizeEcho-main.owner = "s3pt3mb3r";
  inputs.src-colorizeEcho-main.repo  = "colorizeEcho";
  inputs.src-colorizeEcho-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-colorizeEcho-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-colorizeEcho-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}