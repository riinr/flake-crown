{
  description = ''grab statement for importing Nimble packages, similar to Groovy's Grape'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-grab-master.flake = false;
  inputs.src-grab-master.owner = "metagn";
  inputs.src-grab-master.ref   = "refs/heads/master";
  inputs.src-grab-master.repo  = "grab";
  inputs.src-grab-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-grab-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-grab-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}