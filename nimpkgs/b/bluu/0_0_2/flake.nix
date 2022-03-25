{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bluu-0_0_2.flake = false;
  inputs.src-bluu-0_0_2.ref   = "refs/tags/0.0.2";
  inputs.src-bluu-0_0_2.owner = "disruptek";
  inputs.src-bluu-0_0_2.repo  = "bluu";
  inputs.src-bluu-0_0_2.type  = "github";
  
  inputs."openapi".owner = "nim-nix-pkgs";
  inputs."openapi".ref   = "master";
  inputs."openapi".repo  = "openapi";
  inputs."openapi".dir   = "3_3_1";
  inputs."openapi".type  = "github";
  inputs."openapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bluu-0_0_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bluu-0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}