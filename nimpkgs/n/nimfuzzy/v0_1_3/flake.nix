{
  description = ''Fuzzy search wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimfuzzy-v0_1_3.flake = false;
  inputs.src-nimfuzzy-v0_1_3.owner = "genotrance";
  inputs.src-nimfuzzy-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-nimfuzzy-v0_1_3.repo  = "nimfuzzy";
  inputs.src-nimfuzzy-v0_1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimfuzzy-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimfuzzy-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}