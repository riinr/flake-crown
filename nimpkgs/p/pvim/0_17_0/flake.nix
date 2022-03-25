{
  description = ''A parasitic editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pvim-0_17_0.flake = false;
  inputs.src-pvim-0_17_0.ref   = "refs/tags/0.17.0";
  inputs.src-pvim-0_17_0.owner = "paranim";
  inputs.src-pvim-0_17_0.repo  = "pvim";
  inputs.src-pvim-0_17_0.type  = "github";
  
  inputs."paravim".owner = "nim-nix-pkgs";
  inputs."paravim".ref   = "master";
  inputs."paravim".repo  = "paravim";
  inputs."paravim".dir   = "0_18_2";
  inputs."paravim".type  = "github";
  inputs."paravim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pvim-0_17_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-pvim-0_17_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}