{
  description = ''Sparsets for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sparseset-main.flake = false;
  inputs.src-sparseset-main.ref   = "refs/heads/main";
  inputs.src-sparseset-main.owner = "planetis-m";
  inputs.src-sparseset-main.repo  = "sparseset";
  inputs.src-sparseset-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sparseset-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sparseset-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}