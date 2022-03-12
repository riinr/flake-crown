{
  description = ''Wrapper for the DevIL image library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-DevIL-master.flake = false;
  inputs.src-DevIL-master.owner = "Varriount";
  inputs.src-DevIL-master.ref   = "refs/heads/master";
  inputs.src-DevIL-master.repo  = "DevIL";
  inputs.src-DevIL-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-DevIL-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-DevIL-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}