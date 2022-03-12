{
  description = ''Asynchronous networking engine for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-reactor-v0_4_5.flake = false;
  inputs.src-reactor-v0_4_5.owner = "zielmicha";
  inputs.src-reactor-v0_4_5.ref   = "refs/tags/v0.4.5";
  inputs.src-reactor-v0_4_5.repo  = "reactor.nim";
  inputs.src-reactor-v0_4_5.type  = "github";
  
  inputs."collections".dir   = "nimpkgs/c/collections";
  inputs."collections".owner = "riinr";
  inputs."collections".ref   = "flake-pinning";
  inputs."collections".repo  = "flake-nimble";
  inputs."collections".type  = "github";
  inputs."collections".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-reactor-v0_4_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-reactor-v0_4_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}