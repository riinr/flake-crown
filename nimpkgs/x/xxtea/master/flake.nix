{
  description = ''XXTEA encryption algorithm library written in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xxtea-master.flake = false;
  inputs.src-xxtea-master.owner = "xxtea";
  inputs.src-xxtea-master.ref   = "refs/heads/master";
  inputs.src-xxtea-master.repo  = "xxtea-nim";
  inputs.src-xxtea-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xxtea-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xxtea-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}