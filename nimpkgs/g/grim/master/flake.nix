{
  description = ''Graphs in nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-grim-master.flake = false;
  inputs.src-grim-master.owner = "ebran";
  inputs.src-grim-master.ref   = "refs/heads/master";
  inputs.src-grim-master.repo  = "grim";
  inputs.src-grim-master.type  = "github";
  
  inputs."yaml".dir   = "nimpkgs/y/yaml";
  inputs."yaml".owner = "riinr";
  inputs."yaml".ref   = "flake-pinning";
  inputs."yaml".repo  = "flake-nimble";
  inputs."yaml".type  = "github";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional".dir   = "nimpkgs/z/zero_functional";
  inputs."zero_functional".owner = "riinr";
  inputs."zero_functional".ref   = "flake-pinning";
  inputs."zero_functional".repo  = "flake-nimble";
  inputs."zero_functional".type  = "github";
  inputs."zero_functional".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-grim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-grim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}