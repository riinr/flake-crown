{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-runeterra_decks-v0_5_1.flake = false;
  inputs.src-runeterra_decks-v0_5_1.owner = "SolitudeSF";
  inputs.src-runeterra_decks-v0_5_1.ref   = "refs/tags/v0.5.1";
  inputs.src-runeterra_decks-v0_5_1.repo  = "runeterra_decks";
  inputs.src-runeterra_decks-v0_5_1.type  = "github";
  
  inputs."base32".dir   = "nimpkgs/b/base32";
  inputs."base32".owner = "riinr";
  inputs."base32".ref   = "flake-pinning";
  inputs."base32".repo  = "flake-nimble";
  inputs."base32".type  = "github";
  inputs."base32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-runeterra_decks-v0_5_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-runeterra_decks-v0_5_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}