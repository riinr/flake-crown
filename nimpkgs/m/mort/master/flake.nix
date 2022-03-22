{
  description = ''A dead code locator for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mort-master.flake = false;
  inputs.src-mort-master.owner = "jyapayne";
  inputs.src-mort-master.ref   = "master";
  inputs.src-mort-master.repo  = "mort";
  inputs.src-mort-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mort-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mort-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}