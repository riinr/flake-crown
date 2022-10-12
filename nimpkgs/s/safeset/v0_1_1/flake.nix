{
  description = ''Set that can safely add and remove elements while iterating.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-safeset-v0_1_1.flake = false;
  inputs.src-safeset-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-safeset-v0_1_1.owner = "avahe-kellenberger";
  inputs.src-safeset-v0_1_1.repo  = "safeset";
  inputs.src-safeset-v0_1_1.type  = "github";
  
  inputs."nimtest".owner = "nim-nix-pkgs";
  inputs."nimtest".ref   = "master";
  inputs."nimtest".repo  = "nimtest";
  inputs."nimtest".dir   = "v0_1_2";
  inputs."nimtest".type  = "github";
  inputs."nimtest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-safeset-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-safeset-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}