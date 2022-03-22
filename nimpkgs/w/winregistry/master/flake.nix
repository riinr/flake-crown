{
  description = ''Deal with Windows Registry from Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-winregistry-master.flake = false;
  inputs.src-winregistry-master.ref   = "refs/heads/master";
  inputs.src-winregistry-master.owner = "miere43";
  inputs.src-winregistry-master.repo  = "nim-registry";
  inputs.src-winregistry-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-winregistry-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-winregistry-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}