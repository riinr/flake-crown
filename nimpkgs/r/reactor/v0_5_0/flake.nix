{
  description = ''Asynchronous networking engine for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-reactor-v0_5_0.flake = false;
  inputs.src-reactor-v0_5_0.owner = "zielmicha";
  inputs.src-reactor-v0_5_0.ref   = "v0_5_0";
  inputs.src-reactor-v0_5_0.repo  = "reactor.nim";
  inputs.src-reactor-v0_5_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-reactor-v0_5_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-reactor-v0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}