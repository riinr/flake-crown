{
  description = ''Pure nim fuzzy search implementation. Supports substrings etc'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fuzzy-v0_1_0.flake = false;
  inputs.src-fuzzy-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-fuzzy-v0_1_0.owner = "pigmej";
  inputs.src-fuzzy-v0_1_0.repo  = "fuzzy";
  inputs.src-fuzzy-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fuzzy-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fuzzy-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}