{
  description = ''Machine learning library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mentat-v0_1_1.flake = false;
  inputs.src-mentat-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-mentat-v0_1_1.owner = "ruivieira";
  inputs.src-mentat-v0_1_1.repo  = "nim-mentat";
  inputs.src-mentat-v0_1_1.type  = "github";
  
  inputs."science".owner = "nim-nix-pkgs";
  inputs."science".ref   = "master";
  inputs."science".repo  = "science";
  inputs."science".dir   = "v0_2_2";
  inputs."science".type  = "github";
  inputs."science".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mentat-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-mentat-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}