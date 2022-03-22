{
  description = ''Base32 library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-base32-master.flake = false;
  inputs.src-base32-master.owner = "OpenSystemsLab";
  inputs.src-base32-master.ref   = "master";
  inputs.src-base32-master.repo  = "base32.nim";
  inputs.src-base32-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-base32-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-base32-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}