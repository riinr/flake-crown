{
  description = ''A file system monitor in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fsnotify-v0_1_4.flake = false;
  inputs.src-fsnotify-v0_1_4.ref   = "refs/tags/v0.1.4";
  inputs.src-fsnotify-v0_1_4.owner = "planety";
  inputs.src-fsnotify-v0_1_4.repo  = "fsnotify";
  inputs.src-fsnotify-v0_1_4.type  = "github";
  
  inputs."xio".owner = "nim-nix-pkgs";
  inputs."xio".ref   = "master";
  inputs."xio".repo  = "xio";
  inputs."xio".dir   = "master";
  inputs."xio".type  = "github";
  inputs."xio".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xio".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fsnotify-v0_1_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-fsnotify-v0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}