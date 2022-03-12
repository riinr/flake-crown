{
  description = ''ADB protocol implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-adb-master.flake = false;
  inputs.src-adb-master.owner = "Yardanico";
  inputs.src-adb-master.ref   = "refs/heads/master";
  inputs.src-adb-master.repo  = "nim-adb";
  inputs.src-adb-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-adb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-adb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}