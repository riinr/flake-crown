{
  description = ''Directory listing tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lq-3_0_0.flake = false;
  inputs.src-lq-3_0_0.ref   = "refs/tags/3.0.0";
  inputs.src-lq-3_0_0.owner = "madprops";
  inputs.src-lq-3_0_0.repo  = "lq";
  inputs.src-lq-3_0_0.type  = "github";
  
  inputs."nap".owner = "nim-nix-pkgs";
  inputs."nap".ref   = "master";
  inputs."nap".repo  = "nap";
  inputs."nap".dir   = "v3_0_0";
  inputs."nap".type  = "github";
  inputs."nap".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lq-3_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-lq-3_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}