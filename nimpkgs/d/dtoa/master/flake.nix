{
  description = ''Port of Milo Yip's fast dtoa() implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dtoa-master.flake = false;
  inputs.src-dtoa-master.ref   = "refs/heads/master";
  inputs.src-dtoa-master.owner = "LemonBoy";
  inputs.src-dtoa-master.repo  = "dtoa.nim";
  inputs.src-dtoa-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dtoa-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dtoa-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}