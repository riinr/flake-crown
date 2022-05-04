{
  description = ''Color management utility for X'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xcm-v0_1_0.flake = false;
  inputs.src-xcm-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-xcm-v0_1_0.owner = "SolitudeSF";
  inputs.src-xcm-v0_1_0.repo  = "xcm";
  inputs.src-xcm-v0_1_0.type  = "github";
  
  inputs."github-solitudesf-x11".owner = "nim-nix-pkgs";
  inputs."github-solitudesf-x11".ref   = "master";
  inputs."github-solitudesf-x11".repo  = "github-solitudesf-x11";
  inputs."github-solitudesf-x11".dir   = "master";
  inputs."github-solitudesf-x11".type  = "github";
  inputs."github-solitudesf-x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-solitudesf-x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_23";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xcm-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-xcm-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}