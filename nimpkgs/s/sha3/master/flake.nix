{
  description = ''sha3 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sha3-master.flake = false;
  inputs.src-sha3-master.ref   = "refs/heads/master";
  inputs.src-sha3-master.owner = "narimiran";
  inputs.src-sha3-master.repo  = "sha3";
  inputs.src-sha3-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sha3-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sha3-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}