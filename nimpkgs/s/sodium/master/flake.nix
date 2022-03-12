{
  description = ''High-level libsodium bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sodium-master.flake = false;
  inputs.src-sodium-master.owner = "zielmicha";
  inputs.src-sodium-master.ref   = "refs/heads/master";
  inputs.src-sodium-master.repo  = "libsodium.nim";
  inputs.src-sodium-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sodium-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sodium-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}