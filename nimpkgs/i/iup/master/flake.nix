{
  description = ''Nim wrapper for IUP'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-iup-master.flake = false;
  inputs.src-iup-master.ref   = "refs/heads/master";
  inputs.src-iup-master.owner = "nim-lang";
  inputs.src-iup-master.repo  = "iup";
  inputs.src-iup-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-iup-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-iup-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}