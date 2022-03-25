{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-runeterra_decks-v0_2_0.flake = false;
  inputs.src-runeterra_decks-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-runeterra_decks-v0_2_0.owner = "SolitudeSF";
  inputs.src-runeterra_decks-v0_2_0.repo  = "runeterra_decks";
  inputs.src-runeterra_decks-v0_2_0.type  = "github";
  
  inputs."base32".owner = "nim-nix-pkgs";
  inputs."base32".ref   = "master";
  inputs."base32".repo  = "base32";
  inputs."base32".dir   = "0_1_3";
  inputs."base32".type  = "github";
  inputs."base32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-runeterra_decks-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-runeterra_decks-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}