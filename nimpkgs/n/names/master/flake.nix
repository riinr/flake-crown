{
  description = ''String interning library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-names-master.flake = false;
  inputs.src-names-master.owner = "pragmagic";
  inputs.src-names-master.ref   = "refs/heads/master";
  inputs.src-names-master.repo  = "names";
  inputs.src-names-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-names-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-names-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}