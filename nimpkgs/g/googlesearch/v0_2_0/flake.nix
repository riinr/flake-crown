{
  description = ''Nim library for scraping google search results'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-googlesearch-v0_2_0.flake = false;
  inputs.src-googlesearch-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-googlesearch-v0_2_0.owner = "xyb";
  inputs.src-googlesearch-v0_2_0.repo  = "googlesearch.nim";
  inputs.src-googlesearch-v0_2_0.type  = "github";
  
  inputs."nimquery".owner = "nim-nix-pkgs";
  inputs."nimquery".ref   = "master";
  inputs."nimquery".repo  = "nimquery";
  inputs."nimquery".dir   = "v1_2_3";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-googlesearch-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-googlesearch-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}