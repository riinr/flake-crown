{
  description = ''3DES native library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-des-master.flake = false;
  inputs.src-des-master.ref   = "refs/heads/master";
  inputs.src-des-master.owner = "LucaWolf";
  inputs.src-des-master.repo  = "des.nim";
  inputs.src-des-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-des-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-des-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}