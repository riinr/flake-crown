{
  description = ''A new awesome nimble package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nicoru-main.flake = false;
  inputs.src-nicoru-main.ref   = "refs/heads/main";
  inputs.src-nicoru-main.owner = "fox0430";
  inputs.src-nicoru-main.repo  = "nicoru";
  inputs.src-nicoru-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nicoru-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nicoru-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}