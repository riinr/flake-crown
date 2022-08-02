{
  description = ''Tales of Maj'Eyal addon manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tam-v0_1_1.flake = false;
  inputs.src-tam-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-tam-v0_1_1.owner = "SolitudeSF";
  inputs.src-tam-v0_1_1.repo  = "tam";
  inputs.src-tam-v0_1_1.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_27";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery".owner = "nim-nix-pkgs";
  inputs."nimquery".ref   = "master";
  inputs."nimquery".repo  = "nimquery";
  inputs."nimquery".dir   = "v2_0_0";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiny_sqlite".owner = "nim-nix-pkgs";
  inputs."tiny_sqlite".ref   = "master";
  inputs."tiny_sqlite".repo  = "tiny_sqlite";
  inputs."tiny_sqlite".dir   = "v0_1_3";
  inputs."tiny_sqlite".type  = "github";
  inputs."tiny_sqlite".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiny_sqlite".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tam-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-tam-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}