{
  description = ''Write GUI automation scripts with Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-autome-master.flake = false;
  inputs.src-autome-master.owner = "miere43";
  inputs.src-autome-master.ref   = "refs/heads/master";
  inputs.src-autome-master.repo  = "autome";
  inputs.src-autome-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-autome-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-autome-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}