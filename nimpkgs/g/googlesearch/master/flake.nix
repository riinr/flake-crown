{
  description = ''library for scraping google search results'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-googlesearch-master.flake = false;
  inputs.src-googlesearch-master.owner = "xyb";
  inputs.src-googlesearch-master.ref   = "refs/heads/master";
  inputs.src-googlesearch-master.repo  = "googlesearch.nim";
  inputs.src-googlesearch-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-googlesearch-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-googlesearch-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}