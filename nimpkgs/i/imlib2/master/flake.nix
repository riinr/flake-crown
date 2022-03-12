{
  description = ''Simple wrapper of the Imlib2 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-imlib2-master.flake = false;
  inputs.src-imlib2-master.owner = "PMunch";
  inputs.src-imlib2-master.ref   = "refs/heads/master";
  inputs.src-imlib2-master.repo  = "Imlib2";
  inputs.src-imlib2-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-imlib2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-imlib2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}