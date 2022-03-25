{
  description = ''Cirru EDN loader in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirruEdn-v0_1_5.flake = false;
  inputs.src-cirruEdn-v0_1_5.ref   = "refs/tags/v0.1.5";
  inputs.src-cirruEdn-v0_1_5.owner = "Cirru";
  inputs.src-cirruEdn-v0_1_5.repo  = "cirru-edn.nim";
  inputs.src-cirruEdn-v0_1_5.type  = "github";
  
  inputs."cirru-parser".owner = "nim-nix-pkgs";
  inputs."cirru-parser".ref   = "master";
  inputs."cirru-parser".repo  = "cirru-parser";
  inputs."cirru-parser".dir   = "";
  inputs."cirru-parser".type  = "github";
  inputs."cirru-parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru-parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirruEdn-v0_1_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cirruEdn-v0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}