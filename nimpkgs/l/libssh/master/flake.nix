{
  description = ''libssh FFI bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libssh-master.flake = false;
  inputs.src-libssh-master.ref   = "refs/heads/master";
  inputs.src-libssh-master.owner = "dariolah";
  inputs.src-libssh-master.repo  = "libssh-nim";
  inputs.src-libssh-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libssh-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libssh-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}