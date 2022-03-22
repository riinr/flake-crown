{
  description = ''Base32 library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-base32-0_1_2.flake = false;
  inputs.src-base32-0_1_2.owner = "OpenSystemsLab";
  inputs.src-base32-0_1_2.ref   = "0_1_2";
  inputs.src-base32-0_1_2.repo  = "base32.nim";
  inputs.src-base32-0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-base32-0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-base32-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}