{
  description = ''blake2 - cryptographic hash function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-blake2-master.flake = false;
  inputs.src-blake2-master.owner = "narimiran";
  inputs.src-blake2-master.ref   = "refs/heads/master";
  inputs.src-blake2-master.repo  = "blake2";
  inputs.src-blake2-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-blake2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-blake2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}