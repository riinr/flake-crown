{
  description = ''Tool to generate installers for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-niminst-master.flake = false;
  inputs.src-niminst-master.owner = "nim-lang";
  inputs.src-niminst-master.ref   = "master";
  inputs.src-niminst-master.repo  = "niminst";
  inputs.src-niminst-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-niminst-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-niminst-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}