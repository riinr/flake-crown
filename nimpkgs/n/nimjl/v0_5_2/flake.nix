{
  description = ''Nim Julia bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimjl-v0_5_2.flake = false;
  inputs.src-nimjl-v0_5_2.ref   = "refs/tags/v0.5.2";
  inputs.src-nimjl-v0_5_2.owner = "Clonkk";
  inputs.src-nimjl-v0_5_2.repo  = "nimjl";
  inputs.src-nimjl-v0_5_2.type  = "github";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".dir   = "v0_7_12";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimjl-v0_5_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimjl-v0_5_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}