{
  description = ''Fuzzy search wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimfuzzy-v0_1_5.flake = false;
  inputs.src-nimfuzzy-v0_1_5.owner = "genotrance";
  inputs.src-nimfuzzy-v0_1_5.ref   = "refs/tags/v0.1.5";
  inputs.src-nimfuzzy-v0_1_5.repo  = "nimfuzzy";
  inputs.src-nimfuzzy-v0_1_5.type  = "github";
  
  inputs."nimgen".dir   = "nimpkgs/n/nimgen";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".ref   = "flake-pinning";
  inputs."nimgen".repo  = "flake-nimble";
  inputs."nimgen".type  = "github";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimfuzzy-v0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimfuzzy-v0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}