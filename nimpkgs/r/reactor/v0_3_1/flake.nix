{
  description = ''Asynchronous networking engine for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-reactor-v0_3_1.flake = false;
  inputs.src-reactor-v0_3_1.ref   = "refs/tags/v0.3.1";
  inputs.src-reactor-v0_3_1.owner = "zielmicha";
  inputs.src-reactor-v0_3_1.repo  = "reactor.nim";
  inputs.src-reactor-v0_3_1.type  = "github";
  
  inputs."collections".owner = "nim-nix-pkgs";
  inputs."collections".ref   = "master";
  inputs."collections".repo  = "collections";
  inputs."collections".dir   = "v0_5_2";
  inputs."collections".type  = "github";
  inputs."collections".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-reactor-v0_3_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-reactor-v0_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}