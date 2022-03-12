{
  description = ''Transformer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-retranslator-0_0_5.flake = false;
  inputs.src-retranslator-0_0_5.owner = "linksplatform";
  inputs.src-retranslator-0_0_5.ref   = "refs/tags/0.0.5";
  inputs.src-retranslator-0_0_5.repo  = "RegularExpressions.Transformer";
  inputs.src-retranslator-0_0_5.type  = "github";
  
  inputs."nre".dir   = "nimpkgs/n/nre";
  inputs."nre".owner = "riinr";
  inputs."nre".ref   = "flake-pinning";
  inputs."nre".repo  = "flake-nimble";
  inputs."nre".type  = "github";
  inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-retranslator-0_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-retranslator-0_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}