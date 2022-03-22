{
  description = ''Bindings to the high-level Argon2 C API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-argon2_bind-master.flake = false;
  inputs.src-argon2_bind-master.ref   = "refs/heads/master";
  inputs.src-argon2_bind-master.owner = "D-Nice";
  inputs.src-argon2_bind-master.repo  = "argon2_bind";
  inputs.src-argon2_bind-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-argon2_bind-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-argon2_bind-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}