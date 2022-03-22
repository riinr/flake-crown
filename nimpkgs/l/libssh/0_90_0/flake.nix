{
  description = ''libssh FFI bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libssh-0_90_0.flake = false;
  inputs.src-libssh-0_90_0.ref   = "refs/tags/0.90.0";
  inputs.src-libssh-0_90_0.owner = "dariolah";
  inputs.src-libssh-0_90_0.repo  = "libssh-nim";
  inputs.src-libssh-0_90_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libssh-0_90_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libssh-0_90_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}