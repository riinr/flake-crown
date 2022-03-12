{
  description = ''Convert a Nim file or string to Markdown'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimtomd-master.flake = false;
  inputs.src-nimtomd-master.owner = "ThomasTJdev";
  inputs.src-nimtomd-master.ref   = "refs/heads/master";
  inputs.src-nimtomd-master.repo  = "nimtomd";
  inputs.src-nimtomd-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimtomd-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimtomd-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}