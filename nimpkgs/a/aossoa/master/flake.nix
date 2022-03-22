{
  description = ''Use a Structure of Arrays like an Array of Structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aossoa-master.flake = false;
  inputs.src-aossoa-master.owner = "guibar64";
  inputs.src-aossoa-master.ref   = "master";
  inputs.src-aossoa-master.repo  = "aossoa";
  inputs.src-aossoa-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aossoa-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aossoa-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}