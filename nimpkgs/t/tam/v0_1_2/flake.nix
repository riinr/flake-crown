{
  description = ''Tales of Maj'Eyal addon manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tam-v0_1_2.flake = false;
  inputs.src-tam-v0_1_2.owner = "SolitudeSF";
  inputs.src-tam-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-tam-v0_1_2.repo  = "tam";
  inputs.src-tam-v0_1_2.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery".dir   = "nimpkgs/n/nimquery";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".ref   = "flake-pinning";
  inputs."nimquery".repo  = "flake-nimble";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiny_sqlite".dir   = "nimpkgs/t/tiny_sqlite";
  inputs."tiny_sqlite".owner = "riinr";
  inputs."tiny_sqlite".ref   = "flake-pinning";
  inputs."tiny_sqlite".repo  = "flake-nimble";
  inputs."tiny_sqlite".type  = "github";
  inputs."tiny_sqlite".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiny_sqlite".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tam-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tam-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}