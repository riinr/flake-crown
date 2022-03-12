{
  description = ''LibFixMath 16:16 fixed point support for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fixmath-master.flake = false;
  inputs.src-fixmath-master.owner = "Jeff-Ciesielski";
  inputs.src-fixmath-master.ref   = "refs/heads/master";
  inputs.src-fixmath-master.repo  = "fixmath";
  inputs.src-fixmath-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fixmath-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fixmath-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}