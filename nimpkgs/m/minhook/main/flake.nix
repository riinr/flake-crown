{
  description = ''MinHook wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-minhook-main.flake = false;
  inputs.src-minhook-main.owner = "khchen";
  inputs.src-minhook-main.ref   = "main";
  inputs.src-minhook-main.repo  = "minhook";
  inputs.src-minhook-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-minhook-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-minhook-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}