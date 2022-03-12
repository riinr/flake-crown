{
  description = ''KWin JavaScript API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kwin-master.flake = false;
  inputs.src-kwin-master.owner = "reactormonk";
  inputs.src-kwin-master.ref   = "refs/heads/master";
  inputs.src-kwin-master.repo  = "nim-kwin";
  inputs.src-kwin-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kwin-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kwin-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}