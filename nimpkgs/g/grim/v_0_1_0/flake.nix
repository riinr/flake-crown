{
  description = ''Graphs in nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-grim-v_0_1_0.flake = false;
  inputs.src-grim-v_0_1_0.owner = "ebran";
  inputs.src-grim-v_0_1_0.ref   = "refs/tags/v.0.1.0";
  inputs.src-grim-v_0_1_0.repo  = "grim";
  inputs.src-grim-v_0_1_0.type  = "github";
  
  inputs."yaml".dir   = "nimpkgs/y/yaml";
  inputs."yaml".owner = "riinr";
  inputs."yaml".ref   = "flake-pinning";
  inputs."yaml".repo  = "flake-nimble";
  inputs."yaml".type  = "github";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-grim-v_0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-grim-v_0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}