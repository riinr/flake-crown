{
  description = ''Bindings to the high-level Argon2 C API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-argon2_bind-v0_1_1.flake = false;
  inputs.src-argon2_bind-v0_1_1.owner = "D-Nice";
  inputs.src-argon2_bind-v0_1_1.ref   = "v0_1_1";
  inputs.src-argon2_bind-v0_1_1.repo  = "argon2_bind";
  inputs.src-argon2_bind-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-argon2_bind-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-argon2_bind-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}