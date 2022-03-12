{
  description = ''Bindings to the high-level Argon2 C API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-argon2_bind-develop.flake = false;
  inputs.src-argon2_bind-develop.owner = "D-Nice";
  inputs.src-argon2_bind-develop.ref   = "refs/heads/develop";
  inputs.src-argon2_bind-develop.repo  = "argon2_bind";
  inputs.src-argon2_bind-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-argon2_bind-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-argon2_bind-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}