{
  description = ''SHA2 secure hash algorithm - 2 - [224, 256, 384, 512 bits]'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimSHA2-master.flake = false;
  inputs.src-nimSHA2-master.owner = "jangko";
  inputs.src-nimSHA2-master.ref   = "master";
  inputs.src-nimSHA2-master.repo  = "nimSHA2";
  inputs.src-nimSHA2-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimSHA2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimSHA2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}