{
  description = ''Asynchronous networking engine for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-reactor-v0_4_5.flake = false;
  inputs.src-reactor-v0_4_5.ref   = "refs/tags/v0.4.5";
  inputs.src-reactor-v0_4_5.owner = "zielmicha";
  inputs.src-reactor-v0_4_5.repo  = "reactor.nim";
  inputs.src-reactor-v0_4_5.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-reactor-v0_4_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-reactor-v0_4_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}