{
  description = ''The SHIORI DLL interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shioridll-v3_0_0.flake = false;
  inputs.src-shioridll-v3_0_0.ref   = "refs/tags/v3.0.0";
  inputs.src-shioridll-v3_0_0.owner = "Narazaka";
  inputs.src-shioridll-v3_0_0.repo  = "shioridll-nim";
  inputs.src-shioridll-v3_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shioridll-v3_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shioridll-v3_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}