{
  description = ''typeclasses for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-classy-master.flake = false;
  inputs.src-classy-master.owner = "nigredo-tori";
  inputs.src-classy-master.ref   = "refs/heads/master";
  inputs.src-classy-master.repo  = "classy";
  inputs.src-classy-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-classy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-classy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}