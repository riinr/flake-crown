{
  description = ''typeclasses for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-classy-v0_0_3.flake = false;
  inputs.src-classy-v0_0_3.owner = "nigredo-tori";
  inputs.src-classy-v0_0_3.ref   = "refs/tags/v0.0.3";
  inputs.src-classy-v0_0_3.repo  = "classy";
  inputs.src-classy-v0_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-classy-v0_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-classy-v0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}