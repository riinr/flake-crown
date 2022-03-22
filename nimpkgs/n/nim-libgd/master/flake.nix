{
  description = ''Nim Wrapper for LibGD 2.x'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim-libgd-master.flake = false;
  inputs.src-nim-libgd-master.owner = "mrhdias";
  inputs.src-nim-libgd-master.ref   = "master";
  inputs.src-nim-libgd-master.repo  = "nim-libgd";
  inputs.src-nim-libgd-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim-libgd-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nim-libgd-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}