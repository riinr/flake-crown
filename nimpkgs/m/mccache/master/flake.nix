{
  description = ''mccache package: in-memory caching - patched'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mccache-master.flake = false;
  inputs.src-mccache-master.owner = "abbeymart";
  inputs.src-mccache-master.ref   = "master";
  inputs.src-mccache-master.repo  = "mccache-nim";
  inputs.src-mccache-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mccache-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mccache-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}