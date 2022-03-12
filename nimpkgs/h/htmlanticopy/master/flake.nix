{
  description = ''Block copy of any text in HTML'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-htmlAntiCopy-master.flake = false;
  inputs.src-htmlAntiCopy-master.owner = "thisago";
  inputs.src-htmlAntiCopy-master.ref   = "refs/heads/master";
  inputs.src-htmlAntiCopy-master.repo  = "htmlAntiCopy";
  inputs.src-htmlAntiCopy-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-htmlAntiCopy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-htmlAntiCopy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}