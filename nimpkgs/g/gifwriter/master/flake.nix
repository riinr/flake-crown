{
  description = ''GIF writing library based on jo_gif'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gifwriter-master.flake = false;
  inputs.src-gifwriter-master.owner = "rxi";
  inputs.src-gifwriter-master.ref   = "master";
  inputs.src-gifwriter-master.repo  = "gifwriter";
  inputs.src-gifwriter-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gifwriter-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gifwriter-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}