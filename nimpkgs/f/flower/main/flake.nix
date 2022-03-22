{
  description = ''A pure Nim bloom filter.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-flower-main.flake = false;
  inputs.src-flower-main.ref   = "refs/heads/main";
  inputs.src-flower-main.owner = "dizzyliam";
  inputs.src-flower-main.repo  = "flower";
  inputs.src-flower-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-flower-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-flower-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}