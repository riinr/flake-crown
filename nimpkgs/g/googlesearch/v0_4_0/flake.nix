{
  description = ''library for scraping google search results'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-googlesearch-v0_4_0.flake = false;
  inputs.src-googlesearch-v0_4_0.owner = "xyb";
  inputs.src-googlesearch-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-googlesearch-v0_4_0.repo  = "googlesearch.nim";
  inputs.src-googlesearch-v0_4_0.type  = "github";
  
  inputs."nimquery".dir   = "nimpkgs/n/nimquery";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".ref   = "flake-pinning";
  inputs."nimquery".repo  = "flake-nimble";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-googlesearch-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-googlesearch-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}