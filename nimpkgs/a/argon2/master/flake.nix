{
  description = ''A nim wrapper for Argon2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-argon2-master.flake = false;
  inputs.src-argon2-master.ref   = "refs/heads/master";
  inputs.src-argon2-master.owner = "Ahrotahn";
  inputs.src-argon2-master.repo  = "argon2";
  inputs.src-argon2-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-argon2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-argon2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}